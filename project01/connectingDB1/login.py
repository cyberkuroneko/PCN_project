import tkinter as tk
import pickle
from tkinter import messagebox

        window = tk.Tk()
        window.title('営業支援マッチングシステムへようこそ')
        window.geometry('450x300')
        
        
        
        window.mainloop()

    
        tk.Label(window,text = 'Username:').place(x = 50,y = 150)
        tk.Label(window,text = 'Password:').place(x = 50,y = 190)
    
        var_usr_name = tk.StringVar()
        
        var_usr_name.set('12345')
        var_usr_pwd = tk.StringVar()
        entry_usr_name = tk.Entry(window,textvariable = var_usr_name)
        entry_usr_name.place(x = 160,y = 150)
    
        entry_usr_pwd = tk.Entry(window,textvariable = var_usr_pwd,show ='*')
        entry_usr_pwd.place(x = 160,y = 190)


     
        btn_login = tk.Button(window,text = 'Login',command = usr_login)
        btn_login.place(x = 170,y = 230)
        

            def usr_login():
                usr_name = var_usr_name.get()
                usr_pwd = var_usr_pwd.get()
                try:
                    with open('usrs_info,pickle','rb') as usr_file:
                        usrs_info = pickle.load(usr_file)
                except FileNotFoundError:
                    with open('usrs_info','wb') as usr_file:
                        usrs_info = {'admin':'admin'}
                        pickle.dump(usrs_info,usr_file)
                if usr_name in usrs_info:
                    if usr_pwd == usrs_info[usr_name]:
                        tk.messagebox.showinfo(title = 'ようこそ',message = '営業支援マッチングシステムへ' + usr_name)
                    else:
                        tk.messagebox.showinfo(message = 'ログイン失敗しました')
                else:
                    is_sign_up = tk.messagebox.askyesno('エラーです','もう一度お試しください')
            
                    if is_sign_up:
                        usr_sign_up()
