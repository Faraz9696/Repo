import tkinter as tk

def handle_click(event):
    print(f"Button clicked at X={event.x}, Y={event.y}")

def handle_key(event):
    print(f"Key pressed: {event.char}")

def toggle_color():
    current_color = button.cget("background")
    if current_color == "red":
        button.config(bg="green")
    elif current_color == "green":
        button.config(bg="yellow")
    elif current_color == "yellow":
        button.config(bg="red")

window = tk.Tk()

button = tk.Button(window, text="Click Me", bg="red", command=toggle_color)
button.pack()

entry = tk.Entry(window)
entry.pack()

button.bind("<Button-1>", handle_click)
entry.bind("<Key>", handle_key)

window.mainloop()