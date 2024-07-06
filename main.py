import tkinter as tk
from tkinter import ttk
from tkinter import filedialog
from tkinter import messagebox

import tensorflow as tf
import numpy as np
import cv2
from matplotlib.figure import Figure
from matplotlib.backends.backend_tkagg import FigureCanvasTkAgg

# constants
WINDOW_WIDTH = 800
WINDOW_HEIGHT = 600
WINDOW_TITLE = "Super Resolution App"
MODELS = ["srcnn", "edsr", "vdsr", "srgan"] 


def srcnn_predict(image_path, upscale_factor=2):
    """
    Applies the SRCNN model to the input image for super-resolution.

    Parameters:
        image_path (str): The path to the input image file.
        upscale_factor (int, optional): The factor by which the image will be upscaled. Defaults to 2.

    Returns:
        numpy.ndarray: The high-resolution image obtained after applying the SRCNN model.
    """
    srcnn_model = tf.keras.models.load_model("./src/models_saved/srcnn_model_2x.tf")  # load model

    full_image = cv2.imread(image_path, cv2.IMREAD_COLOR)

    # normalize and convert to float32
    float_img = full_image.astype(np.float32) / 255.0
    imgYCbCr = cv2.cvtColor(float_img, cv2.COLOR_BGR2YCrCb)
    imgY = imgYCbCr[:, :, 0]
    imgY = np.expand_dims(cv2.resize(imgYCbCr[:, :, 0], None, fx=upscale_factor, fy=upscale_factor, interpolation=cv2.INTER_CUBIC),
                          axis=2)
    
    LR_input_ = imgY.reshape(1, imgY.shape[0], imgY.shape[1], 1)

    Y = srcnn_model.predict([LR_input_])[0]
    Cr = np.expand_dims(cv2.resize(imgYCbCr[:, :, 1], None, fx=upscale_factor, fy=upscale_factor, interpolation=cv2.INTER_CUBIC),
                        axis=2)
    Cb = np.expand_dims(cv2.resize(imgYCbCr[:, :, 2], None, fx=upscale_factor, fy=upscale_factor, interpolation=cv2.INTER_CUBIC),
                        axis=2)
    HR_image_YCrCb = np.concatenate((Y, Cr, Cb), axis=2)

    # convert back to BGR and uint8
    HR_image = cv2.cvtColor(HR_image_YCrCb, cv2.COLOR_YCrCb2BGR)
    HR_image = (HR_image * 255.0).clip(0, 255).astype(np.uint8)

    return full_image, HR_image


def vdsr_predict(image_path, upscale_factor=2):
    """
    Applies the VDSR model to the input image for super-resolution.

    Parameters:
        image_path (str): The path to the input image file.
        upscale_factor (int, optional): The factor by which the image will be upscaled. Defaults to 2.

    Returns:
        numpy.ndarray: The high-resolution image obtained after applying the VDSR model.
    """
    srcnn_model = tf.keras.models.load_model("./src/models_saved/vdsr_model.tf")  # load model

    full_image = cv2.imread(image_path, cv2.IMREAD_COLOR)

    # normalize and convert to float32
    float_img = full_image.astype(np.float32) / 255.0
    imgYCbCr = cv2.cvtColor(float_img, cv2.COLOR_BGR2YCrCb)
    imgY = imgYCbCr[:, :, 0]
    imgY = np.expand_dims(cv2.resize(imgYCbCr[:, :, 0], None, fx=upscale_factor, fy=upscale_factor, interpolation=cv2.INTER_CUBIC),
                          axis=2)
    
    LR_input_ = imgY.reshape(1, imgY.shape[0], imgY.shape[1], 1)

    Y = srcnn_model.predict([LR_input_])[0]
    Cr = np.expand_dims(cv2.resize(imgYCbCr[:, :, 1], None, fx=upscale_factor, fy=upscale_factor, interpolation=cv2.INTER_CUBIC),
                        axis=2)
    Cb = np.expand_dims(cv2.resize(imgYCbCr[:, :, 2], None, fx=upscale_factor, fy=upscale_factor, interpolation=cv2.INTER_CUBIC),
                        axis=2)
    HR_image_YCrCb = np.concatenate((Y, Cr, Cb), axis=2)

    # convert back to BGR and uint8
    HR_image = cv2.cvtColor(HR_image_YCrCb, cv2.COLOR_YCrCb2BGR)
    HR_image = (HR_image * 255.0).clip(0, 255).astype(np.uint8)

    return full_image, HR_image


def edsr_predict(image_path, upscale_factor=2):
    """
    Applies the EDSR model to the input image for super-resolution.

    Parameters:
        image_path (str): The path to the input image file.
        upscale_factor (int, optional): The factor by which the image will be upscaled. Defaults to 2.

    Returns:
        numpy.ndarray: The high-resolution image obtained after applying the EDSR model.
    """
    edsr_model = tf.keras.models.load_model("./src/models_saved/edsr_model.tf")  # load model

    full_image = cv2.imread(image_path)

    # normalize and convert to float32
    width = full_image.shape[1]
    height = full_image.shape[0]
    img = full_image

    float_image = img.astype(np.float32) / 255.0
    imgYCbCr = cv2.cvtColor(float_image, cv2.COLOR_BGR2YCrCb)
    imgY = imgYCbCr[:, :, 0]
    imgY_upscaled = cv2.resize(imgY, (width * upscale_factor, height * upscale_factor), interpolation=cv2.INTER_CUBIC)
    imgY_upscaled = np.expand_dims(imgY_upscaled, axis=2)

    LR_input_ = imgY_upscaled.reshape(1, imgY_upscaled.shape[0], imgY_upscaled.shape[1], 1)

    Y = edsr_model.predict([LR_input_])[0]

    Y = Y.clip(0, 1)

    # upscale Cr and Cb channels using the same dimensions as Y
    Cr = np.expand_dims(cv2.resize(imgYCbCr[:, :, 1], (Y.shape[1], Y.shape[0]), interpolation=cv2.INTER_CUBIC), axis=2)
    Cb = np.expand_dims(cv2.resize(imgYCbCr[:, :, 2], (Y.shape[1], Y.shape[0]), interpolation=cv2.INTER_CUBIC), axis=2)

    # concatenate Y, Cr, and Cb channels
    HR_image_YCrCb = np.concatenate((Y, Cr, Cb), axis=2)

    # convert YCrCb to BGR
    HR_image = cv2.cvtColor(HR_image_YCrCb, cv2.COLOR_YCrCb2BGR)

    # scale to 0-255 and convert to uint8
    HR_image = (HR_image * 255.0).clip(min=0, max=255).astype(np.uint8)

    return full_image, HR_image


class SuperResolutionApp:
    def __init__(self, root):
        self.root = root

        # create a Frame as a container for the buttons and combobox
        top_frame = tk.Frame(root)
        top_frame.pack(side="top", fill="x", padx=5, pady=5)

        # add "Choose Image" button
        self.btn_choose_image = tk.Button(top_frame, text="Choose Image", command=self.choose_image)
        self.btn_choose_image.grid(row=0, column=0, padx=5, pady=5)

        # add Combobox for model selection
        self.model_selector = ttk.Combobox(top_frame, values=MODELS, state="readonly")
        self.model_selector.set("Choose a model")
        self.model_selector.grid(row=0, column=1, padx=5, pady=5)

        # add "Upscale" button
        self.btn_upscale = tk.Button(top_frame, text="Upscale", command=self.upscale_image)
        self.btn_upscale.grid(row=0, column=2, padx=5, pady=5)

        # add matplotlib figure
        self.figure = Figure(figsize=(20, 10), dpi=100)
        self.canvas = FigureCanvasTkAgg(self.figure, master=root)
        self.canvas.get_tk_widget().pack(side="top", fill="both", expand=True)

        self.image_path = None

    def choose_image(self):
        file_path = filedialog.askopenfilename()
        if file_path:
            self.image_path = file_path
            self.display_image()

    def display_image(self, upscaled_image=None):
        self.figure.clear()
        
        # display the low resolution image
        ax1 = self.figure.add_subplot(1, 2, 1)
        low_res_image = cv2.imread(self.image_path, cv2.IMREAD_COLOR)
        ax1.imshow(cv2.cvtColor(low_res_image, cv2.COLOR_BGR2RGB))
        ax1.set_title("Low Resolution")
        ax1.axis('off')
        
        # display the high resolution image if available
        if upscaled_image is not None:
            ax2 = self.figure.add_subplot(1, 2, 2)
            ax2.imshow(cv2.cvtColor(upscaled_image, cv2.COLOR_BGR2RGB))
            ax2.set_title("High Resolution")
            ax2.axis('off')
        
        self.canvas.draw()

    def upscale_image(self):
        if self.image_path:
            if self.model_selector.get() == "srcnn":
                low_res_image, upscaled_image = srcnn_predict(self.image_path)
            elif self.model_selector.get() == "edsr":
                low_res_image, upscaled_image = edsr_predict(self.image_path)
            elif self.model_selector.get() == "vdsr":
                low_res_image, upscaled_image = vdsr_predict(self.image_path)
            else:
                messagebox.showwarning("Warning", "Please choose a valid model.")
                return
            self.display_image(upscaled_image)
        else:
            messagebox.showwarning("Warning", "Please choose an image first.")


def instantiate_window():
    root = tk.Tk()

    root.title(WINDOW_TITLE)
    root.geometry(f"{WINDOW_WIDTH}x{WINDOW_HEIGHT}")

    # load and set the window icon
    logo = tk.PhotoImage(file="./assets/logo.png")
    root.iconphoto(False, logo)

    app = SuperResolutionApp(root)

    return root


if __name__ == "__main__":
    root = instantiate_window()
    root.mainloop()