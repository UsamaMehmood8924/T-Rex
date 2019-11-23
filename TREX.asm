; https://github.com/chuhan1043/T-Rex
.model small
.stack 4096
.data
retVal dw 0
;;//////
charAssci db 0

gameName db 'T-Rex Game$' ; size of string = 10
author db 'Developed by Usama Mehmood$' ; size of string = 26



G_over db 'Game Over$' ; size of string = 9
H_Score db 'High Score$' ; size of string 10
HighScore word 0
HighScoreCh word 0
;;// String Display attributes
ColorNum db 0
stringLen word 0
StrRow db 0
StrCol db 0
;;// String Display attributes ends here


;;// Score attributes
ScoreCount dw 0
Score_x db 0
num dw 1234
count db 0
;;// Score attributes ends here

;; cols 30, rows 25

cloud   db  15,15,15,15,15,15,15,15,15,15,15,15,7 ,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
		db	15,15,15,15,15,15,15,15,15,15,7 ,7 ,15,7 ,7 ,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
		db	15,15,15,15,15,15,15,15,15,7 ,15,15,15,15,15,7 ,15,15,15,15,15,15,15,15,15,15,15,15,15,15
		db	15,15,15,15,15,15,15,15,7 ,15,15,15,15,15,15,15,7 ,15,15,15,15,15,15,15,15,15,15,15,15,15
		db	15,15,15,15,15,15,7 ,7 ,15,15,15,15,15,15,15,15,15,7 ,15,15,15,15,15,15,15,15,15,15,15,15
		db	15,15,15,15,15,7 ,15,15,15,15,15,15,15,15,15,15,15,7 ,15,15,15,15,15,15,15,15,15,15,15,15
		db	15,15,15,15,7 ,15,15,15,15,15,15,15,15,15,15,15,15,15,7 ,15,15,15,15,15,15,15,15,15,15,15
		db	15,15,15,15,7 ,15,15,15,15,15,15,15,15,15,15,15,15,15,7 ,15,15,15,15,15,15,15,15,15,15,15
		db	15,15,15,7 ,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,7 ,7 ,7 ,7,15,15,15,15,15,15,15
		db	15,7 ,7 ,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,7 ,15,15,15,15,15,15
		db	7 ,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,7 ,15,15,15,15,15
		db	7 ,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,7,15,15,15,15,15,15
		db	15,7 ,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,7,15,15,15,15,15,15 ,15
		db	15,15,7 ,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,7,15,15,15,15,15,15,15,15
		db	15,15,15,7 ,7 ,7 ,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,15,15,15,15,15,15,15,15,15
		db	15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
		db	15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
		db	15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
		db	15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
		db	15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
		db	15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
		db	15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
		db	15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
		db	15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15

cloud_x_axis word 28
cloud_x1_axis word 31
cloud_y_axis word 50
cloud_y1_axis word 60
cloud_y2_axis word 220
cloud_rows word 24
cloud_cols word 30	


checkM word 0

upCheck word 0
counter word 1
upactive word 0

;;// rows 33
;;// cols 20

Tree1_x_axis word 120
Tree1_y_axis word 100
Tree1_y1_axis word 290
Tree1_y2_axis word 290
Tree1_rows word 33
Tree1_cols word 20   

cTree1_rows word 30
cTree1_x_axis word 124
;;// ctree row = 30
;;// ctree col = 18

ctree db 15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
	  db 15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
	  db 15,15,15,15,15,15,15,15,8 ,8 ,15,15,15,15,15,15,15,15,15,15
	  db 15,15,15,15,15,15,15,8 ,8 ,8 ,8 ,15,15,15,15,15,15,15,15,15
	  db 15,15,15,15,15,15,15,8 ,8 ,8 ,8 ,15,15,15,15,15,15,15,15,15
	  db 15,15,8 ,15,15,15,15,8 ,8 ,8 ,8 ,15,15,15,8 ,15,15,15,15,15
	  db 15,8 ,8 ,8 ,15,15,15,8 ,8 ,8 ,8 ,15,15,8 ,8 ,8 ,15,15,15,15
	  db 15,8 ,8 ,8 ,15,15,15,8 ,8 ,8 ,8 ,15,15,8 ,8 ,8 ,15,15,15,15
	  db 15,8 ,8 ,8 ,15,15,15,8 ,8 ,8 ,8 ,15,15,8 ,8 ,8 ,15,15,15,15
	  db 15,8 ,8 ,8 ,15,15,15,8 ,8 ,8 ,8 ,15,15,8 ,8 ,8 ,15,15,15,15
	  db 15,8 ,8 ,8 ,15,15,15,8 ,8 ,8 ,8 ,15,15,8 ,8 ,8 ,15,15,15,15
	  db 15,8 ,8 ,8 ,15,15,15,8 ,8 ,8 ,8 ,15,15,8 ,8 ,8 ,15,15,15,15
	  db 15,8 ,8 ,8 ,15,15,15,8 ,8 ,8 ,8 ,15,15,8 ,8 ,8 ,15,15,15,15
	  db 15,8 ,8 ,8 ,8 ,15,15,8 ,8 ,8 ,8 ,15,15,8 ,8 ,8 ,15,15,15,15
	  db 15,15,15,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,15,15,8 ,8 ,8 ,15,15,15,15
	  db 15,15,15,15,8 ,8 ,8 ,8 ,8 ,8 ,8 ,15,8 ,8 ,8 ,8 ,15,15,15,15
	  db 15,15,15,15,15,15,15,8 ,8 ,8 ,8 ,8 ,8 ,8, 8 ,15,15,15,15,15
	  db 15,15,15,15,15,15,15,8 ,8 ,8 ,8 ,8 ,8 ,8 ,15,15,15,15,15,15
	  db 15,15,15,15,15,15,15,8 ,8 ,8 ,8 ,15,15,15,15,15,15,15,15,15
	  db 15,15,15,15,15,15,15,8 ,8 ,8 ,8 ,15,15,15,15,15,15,15,15,15
	  db 15,15,15,15,15,15,15,8 ,8 ,8 ,8 ,15,15,15,15,15,15,15,15,15
	  db 15,15,15,15,15,15,15,8 ,8 ,8 ,8 ,15,15,15,15,15,15,15,15,15
	  db 15,15,15,15,15,15,15,8 ,8 ,8 ,8 ,15,15,15,15,15,15,15,15,15
	  db 15,15,15,15,15,15,15,8 ,8 ,8 ,8 ,15,15,15,15,15,15,15,15,15
	  db 15,15,15,15,15,15,15,8 ,8 ,8 ,8 ,15,15,15,15,15,15,15,15,15
	  db 15,15,15,15,15,15,15,8 ,8 ,8 ,8 ,15,15,15,15,15,15,15,15,15
	  db 7 ,7 ,7 ,7 ,7 ,7 ,7 ,8 ,8 ,8 ,8 ,7 ,7 ,7 ,7 ,7 ,7 , 7, 7, 7
	  db 15,15,15,15,15,15,15,8 ,8 ,8 ,8 ,15,15,15,15,15,15,15,15,15
	  db 15,15,15,15,15,15,15,15,8 ,8 ,15,15,15,15,15,15,15,15,15,15

tree  db 15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
	  db 15,15,15,15,15,15,15,8 ,8 ,8 ,8 ,15,15,15,15,15,15,15,15,15
	  db 15,15,15,15,15,15,8 ,8 ,8 ,8 ,8 ,8 ,15,15,15,15,15,15,15,15
	  db 15,15,15,15,15,15,8 ,8 ,8 ,8 ,8 ,8 ,15,15,15,15,15,15,15,15
	  db 15,15,15,15,15,15,8 ,8 ,8 ,8 ,8 ,8 ,15,15,15,15,15,15,15,15
	  db 15,15,15,15,15,15,8 ,8 ,8 ,8 ,8 ,8 ,15,15,15,8 ,15,15,15,15
	  db 15,15,15,15,15,15,8 ,8 ,8 ,8 ,8 ,8 ,15,15,8 ,8 ,8 ,15,15,15
	  db 15,15,15,15,15,15,8 ,8 ,8 ,8 ,8 ,8 ,15,15,8 ,8 ,8 ,15,15,15
	  db 15,15,15,15,15,15,8 ,8 ,8 ,8 ,8 ,8 ,15,15,8 ,8 ,8 ,15,15,15
	  db 15,15,8 ,15,15,15,8 ,8 ,8 ,8 ,8 ,8 ,15,15,8 ,8 ,8 ,15,15,15
	  db 15,8 ,8 ,8 ,15,15,8 ,8 ,8 ,8 ,8 ,8 ,15,15,8 ,8 ,8 ,15,15,15
	  db 15,8 ,8 ,8 ,15,15,8 ,8 ,8 ,8 ,8 ,8 ,15,15,8 ,8 ,8 ,15,15,15
	  db 15,8 ,8 ,8 ,15,15,8 ,8 ,8 ,8 ,8 ,8 ,15,15,8 ,8 ,8 ,15,15,15
	  db 15,8 ,8 ,8 ,15,15,8 ,8 ,8 ,8 ,8 ,8 ,15,15,8 ,8 ,8 ,15,15,15
	  db 15,8 ,8 ,8 ,15,15,8 ,8 ,8 ,8 ,8 ,8 ,15,15,8 ,8 ,8 ,15,15,15
	  db 15,8 ,8 ,8 ,15,15,8 ,8 ,8 ,8 ,8 ,8 ,15,8 ,8 ,8 ,15,15,15,15
	  db 15,8 ,8 ,8 ,15,15,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,15,15,15,15,15
	  db 15,8 ,8 ,8 ,15,15,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,15,15,15,15,15,15
	  db 15,8 ,8 ,8 ,15,15,8 ,8 ,8 ,8 ,8 ,8 ,15,15,15,15,15,15,15,15
	  db 15,8 ,8 ,8 ,15,15,8 ,8 ,8 ,8 ,8 ,8 ,15,15,15,15,15,15,15,15
	  db 15,8 ,8 ,8 ,15,15,8 ,8 ,8 ,8 ,8 ,8 ,15,15,15,15,15,15,15,15
	  db 15,8 ,8 ,8 ,15,15,8 ,8 ,8 ,8 ,8 ,8 ,15,15,15,15,15,15,15,15
	  db 15,15,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,15,15,15,15,15,15,15,15
	  db 15,15,15,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,15,15,15,15,15,15,15,15
	  db 15,15,15,15,15,15,8 ,8 ,8 ,8 ,8 ,8 ,15,15,15,15,15,15,15,15
	  db 15,15,15,15,15,15,8 ,8 ,8 ,8 ,8 ,8 ,15,15,15,15,15,15,15,15
	  db 15,15,15,15,15,15,8 ,8 ,8 ,8 ,8 ,8 ,15,15,15,15,15,15,15,15
	  db 15,15,15,15,15,15,8 ,8 ,8 ,8 ,8 ,8 ,15,15,15,15,15,15,15,15
	  db 15,15,15,15,15,15,8 ,8 ,8 ,8 ,8 ,8 ,15,15,15,15,15,15,15,15
	  db 15,15,15,15,15,15,8 ,8 ,8 ,8 ,8 ,8 ,15,15,15,15,15,15,15,15
	  db 7 ,7 ,7 ,7 ,7 ,7 ,8 ,8 ,8 ,8 ,8 ,8 ,7 ,7 ,7 ,7 ,7 , 7, 7, 7
	  db 15,15,15,15,15,15,8 ,8 ,8 ,8 ,8 ,8 ,15,15,15,15,15,15,15,15
	  db 15,15,15,15,15,15,15,8 ,8 ,8 ,8 ,15,15,15,15,15,15,15,15,15
	  
blankTree db 15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
	  db 15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
	  db 15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
	  db 15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
	  db 15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
	  db 15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
	  db 15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
	  db 15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
	  db 15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
	  db 15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
	  db 15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
	  db 15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
	  db 15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
	  db 15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
	  db 15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
	  db 15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
	  db 15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
	  db 15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
	  db 15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
	  db 15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
	  db 15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
	  db 15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
	  db 15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
	  db 15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
	  db 15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
	  db 15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
	  db 15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
	  db 15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
	  db 15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
	  db 15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
	  db 7 ,7 ,7 ,7 ,7 ,7 ,15,15,15,15,15,15,7 ,7 ,7 ,7 ,7 , 7, 7, 7
	  db 15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
	  db 15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15	  



;;// Dragon attributes 
;;// Rows = 25
;;// Columns = 25

	   
dragon db 15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
	   db 15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
	   db 15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
	   db 15,15,15,15,15,15,15,15,15,15,15,15,15,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,15,15,15,15
	   db 15,15,15,15,15,15,15,15,15,15,15,15,8 ,8 ,15,8 ,8 ,8 ,8 ,8 ,8 ,8 ,15,15,15
	   db 15,15,15,15,15,15,15,15,15,15,15,15,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,15,15,15
	   db 15,15,15,15,15,15,15,15,15,15,15,15,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,15,15,15
	   db 15,15,15,15,15,15,15,15,15,15,15,15,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,15,15,15
	   db 15,15,15,15,15,15,15,15,15,15,15,15,8 ,8 ,8 ,8 ,8 ,8 ,15,15,15,15,15,15,15
	   db 15,15,15,15,15,15,15,15,15,15,15,15,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,15,15,15,15,15
	   db 15,15,15,15,15,15,15,15,15,15,15,8 ,8 ,8 ,8 ,8 ,8 ,15,15,15,15,15,15,15,15
	   db 15,15,8 ,15,15,15,15,15,15,15,8 ,8 ,8 ,8 ,8 ,8 ,8 ,15,15,15,15,15,15,15,15
	   db 15,15,8 ,15,15,15,15,15,15,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,15,15,15,15,15,15
	   db 15,15,8 ,8 ,15,15,15,15,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,15,8 ,15,15,15,15,15,15
	   db 15,15,8 ,8 ,8 ,15,15,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,15,15,15,15,15,15,15,15
	   db 15,15,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,15,15,15,15,15,15,15,15
	   db 15,15,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,15,15,15,15,15,15,15,15,15
	   db 15,15,15,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,15,15,15,15,15,15,15,15,15
	   db 15,15,15,15,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,15,15,15,15,15,15,15,15,15,15
	   db 15,15,15,15,15,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,15,15,15,15,15,15,15,15,15,15,15
	   db 15,15,15,15,15,15,8 ,8 ,8 ,8 ,8 ,8 ,8 ,15,15,15,15,15,15,15,15,15,15,15,15
	   db 15,15,15,15,15,15,15,8 ,8 ,8 ,15,8 ,8 ,15,15,15,15,15,15,15,15,15,15,15,15
	   db 15,15,15,15,15,15,15,8 ,8 ,15,15,15,8 ,15,15,15,15,15,15,15,15,15,15,15,15
	   db 15,15,15,15,15,15,15,8 ,15,15,15,15,8 ,15,15,15,15,15,15,15,15,15,15,15,15
	   db 15,15,15,15,15,15,15,8 ,8 ,15,15,15,8 ,8 ,15,15,15,15,15,15,15,15,15,15,15
	   db 15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
	   db 15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
	   db 15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15	   

dragon1 db 15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
db 15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
	   db 15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
	   db 15,15,15,15,15,15,15,15,15,15,15,15,15,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,15,15,15,15
	   db 15,15,15,15,15,15,15,15,15,15,15,15,8 ,8 ,15,8 ,8 ,8 ,8 ,8 ,8 ,8 ,15,15,15
	   db 15,15,15,15,15,15,15,15,15,15,15,15,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,15,15,15
	   db 15,15,15,15,15,15,15,15,15,15,15,15,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,15,15,15
	   db 15,15,15,15,15,15,15,15,15,15,15,15,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,15,15,15
	   db 15,15,15,15,15,15,15,15,15,15,15,15,8 ,8 ,8 ,8 ,8 ,8 ,15,15,15,15,15,15,15
	   db 15,15,15,15,15,15,15,15,15,15,15,15,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,15,15,15,15,15
	   db 15,15,15,15,15,15,15,15,15,15,15,8 ,8 ,8 ,8 ,8 ,8 ,15,15,15,15,15,15,15,15
	   db 15,15,8 ,15,15,15,15,15,15,15,8 ,8 ,8 ,8 ,8 ,8 ,8 ,15,15,15,15,15,15,15,15
	   db 15,15,8 ,15,15,15,15,15,15,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,15,15,15,15,15,15
	   db 15,15,8 ,8 ,15,15,15,15,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,15,8 ,15,15,15,15,15,15
	   db 15,15,8 ,8 ,8 ,15,15,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,15,15,15,15,15,15,15,15
	   db 15,15,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,15,15,15,15,15,15,15,15
	   db 15,15,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,15,15,15,15,15,15,15,15,15
	   db 15,15,15,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,15,15,15,15,15,15,15,15,15
	   db 15,15,15,15,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,15,15,15,15,15,15,15,15,15,15
	   db 15,15,15,15,15,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,15,15,15,15,15,15,15,15,15,15,15
	   db 15,15,15,15,15,15,8 ,8 ,8 ,8 ,8 ,8 ,8 ,15,15,15,15,15,15,15,15,15,15,15,15
	   db 7 ,7 ,7 ,7 ,7 ,7 ,15,8 ,8 ,8 ,15,8 ,8 ,15,7 ,7 ,7 ,7 ,7 ,7 ,7 ,7 ,7 ,7 , 7 
	   db 15,15,15,15,15,15,15,8 ,8 ,15,15,15,8 ,8 ,15,15,15,15,15,15,15,15,15,15,15
	   db 15,15,15,15,15,15,15,8 ,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
	   db 15,15,15,15,15,15,15,8 ,8 ,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
	   db 15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
	   db 15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
	   db 15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15

dragon2 db 15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
db 15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
	   db 15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
	   db 15,15,15,15,15,15,15,15,15,15,15,15,15,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,15,15,15,15
	   db 15,15,15,15,15,15,15,15,15,15,15,15,8 ,8 ,15,8 ,8 ,8 ,8 ,8 ,8 ,8 ,15,15,15
	   db 15,15,15,15,15,15,15,15,15,15,15,15,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,15,15,15
	   db 15,15,15,15,15,15,15,15,15,15,15,15,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,15,15,15
	   db 15,15,15,15,15,15,15,15,15,15,15,15,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,15,15,15
	   db 15,15,15,15,15,15,15,15,15,15,15,15,8 ,8 ,8 ,8 ,8 ,8 ,15,15,15,15,15,15,15
	   db 15,15,15,15,15,15,15,15,15,15,15,15,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,15,15,15,15,15
	   db 15,15,15,15,15,15,15,15,15,15,15,8 ,8 ,8 ,8 ,8 ,8 ,15,15,15,15,15,15,15,15
	   db 15,15,8 ,15,15,15,15,15,15,15,8 ,8 ,8 ,8 ,8 ,8 ,8 ,15,15,15,15,15,15,15,15
	   db 15,15,8 ,15,15,15,15,15,15,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,15,15,15,15,15,15
	   db 15,15,8 ,8 ,15,15,15,15,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,15,8 ,15,15,15,15,15,15
	   db 15,15,8 ,8 ,8 ,15,15,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,15,15,15,15,15,15,15,15
	   db 15,15,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,15,15,15,15,15,15,15,15
	   db 15,15,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,15,15,15,15,15,15,15,15,15
	   db 15,15,15,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,15,15,15,15,15,15,15,15,15
	   db 15,15,15,15,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,15,15,15,15,15,15,15,15,15,15
	   db 15,15,15,15,15,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,15,15,15,15,15,15,15,15,15,15,15
	   db 15,15,15,15,15,15,8 ,8 ,8 ,8 ,8 ,8 ,8 ,15,15,15,15,15,15,15,15,15,15,15,15
	   db 7 , 7, 7, 7, 7, 7,15,8 ,8 ,8 ,15,8 ,8 ,15,7 , 7, 7, 7, 7, 7, 7, 7, 7, 7, 7
	   db 15,15,15,15,15,15,15,8 ,15,15,15,15,8 ,15,15,15,15,15,15,15,15,15,15,15,15
	   db 15,15,15,15,15,15,15,8 ,8 ,15,15,15,8 ,15,15,15,15,15,15,15,15,15,15,15,15
	   db 15,15,15,15,15,15,15,15,15,15,15,15,8 ,8 ,15,15,15,15,15,15,15,15,15,15,15
	   db 15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
       db 15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
		db 15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
	   

dragon_x_axis word 129
dragon_y_axis word 50
dragon_rows word 28
dragon_cols word 25	   
;;// Dragon attributes ends here



;;// bricks array
;// rows = 8
;// cols = 10

brickArr1 word 5 ,6 ,7 , 8,9 ,11,12,15,25,26
		 word 32,33,34,42,44,47,49,52,54,57
		 word 62,65,67,69,72,75,82,86,89,93
		 word 100,102,106,109,115,118,125,129,135,139
		 word 142,146,149,151,155,157,159,160,165,169
		 word 173,175,179,183,185,189,190,196,200,202
		 word 205,210,215,217,220,225,229,234,239,242
		 word 245,249,256,259,261,263,267,280,285,294
		 
brickArr2 word 7 ,9 ,12,15,19,23,29,32,35,41
		  word 45,52,57,63,69,73,75,79,83,85
		  word 87,89,91,92,93,95,96,97,99,100
		  word 103,110,115,117,119,123,126,129,134,136
		  word 139,142,145,149,153,159,162,164,169,171
		  word 182,186,189,192,197,200,202,206,209,212
		  word 215,219,222,227,229,234,239,243,246,250
		  word 253,257,260,261,266,273,275,282,286,295

BRICK db 15,7,15		  		 
		 

;;// bricks attributes
brick1 db 15,7 ,7 ,7 , 7,15,15,7 ,15,15,15,7 ,7 ,7 , 7,15,15,7 ,15,15,15,7 ,15,7 ,15
brick2 db 15,7 ,7 ,15,15,15,7 ,7 ,7 ,15,15,7 ,7 ,15,15,15,7 ,7 ,7 ,15,15,7 ,7 ,7 ,15
brick3 db 15,7 ,15,7 ,15,15,7 ,15,7 ,15,15,7 ,15,7 ,15,15,7 ,15,7 ,15,15,7 ,7 ,15,15

brick1_x_axis word 153
brick1_y_axis word 250

brick2_x_axis word 155
brick2_y_axis word 120

brick3_x_axis word 153
brick3_y_axis word 200
;;// bricks attributes ends here


;;// horizontalLine attribute
line_col dw 0
line_row dw 0
eline_col dw 0
eline_row dw 0
line_color db 0
;;// horizontalLine attribute ends here

;; Draw Pixel Fuction attributes
cx_cols dw 0
cx_rows dw 0
y_val dw 0
;; Draw Pixel Fuction attributes ends here
	 

;;/// Time delay attribute
delaytime db 1
;;/// Time delay attribute ends here

;;// 
siVal word 0

	 
.code	   
main proc
mov ax,@data
mov ds,ax


;;// Credits to me :)

mov ah,0
mov al,13h
int 10h

mov bp,offset gameName
mov ColorNum,8
mov stringLen,10
mov StrRow,63
mov StrCol,118
call StringOutput

mov bp,offset author
mov ColorNum,8
mov stringLen,26
mov StrRow,65
mov StrCol,111
call StringOutput

mov cx,2fh  
mov dx,2120	
mov ah,86h		
int 15h			

mov ah,0
mov al,13h
int 10h



;;// Graphics Mode
mov ah,0	   
mov al,13h
int 10h


;;// Setting Background Color 
mov ah,06h	     
mov al,0
mov cx,0
mov dh,128
mov dl,128
mov bh,15
int 10h
;;// Setting Background Color ends here 

mov line_col,0
mov line_row,150
mov eline_col,320
mov line_color,7
call horizontalLine

; call TreeDisplay
; call TreeDisplay1

;;// Calling dragon to display on canvas

;;// upper boundry line
mov line_color,0
mov line_col,0
mov line_row,0
mov eline_col,320
call upperBlock

call dragonMove

mov ah,4ch
int 21h
main endp





;;// delay function
delay proc
mov ah,00
int 1Ah
mov bx,dx 

jmpDelay:
int 1Ah
sub dx,bx
cmp dl, delaytime
jl jmpDelay
ret
delay endp
;;// delay function ends


collusion proc

;;/ collusion from front
mov cx,dragon_y_axis
mov dx,dragon_x_axis
add cx,27

mov ah,0dh
int 10h

cmp al,8
je exiit
;;/ collusion from front ends here

;;/ collusion from front bottom
mov cx,dragon_y_axis
mov dx,dragon_x_axis
add dx,27
add cx,20

mov ah,0dh
int 10h

cmp al,8
je exiit


mov cx,dragon_y_axis
mov dx,dragon_x_axis
add dx,15
add cx,25

mov ah,0dh
int 10h

cmp al,8
je exiit

;;/ collusion from front bottom ends here

;;/ collusion from back bottom
mov cx,dragon_y_axis
mov dx,dragon_x_axis
add dx,24

mov ah,0dh
int 10h

cmp al,8
je exiit

mov cx,dragon_y_axis
mov dx,dragon_x_axis
add dx,25

mov ah,0dh
int 10h

cmp al,8
je exiit

mov cx,dragon_y_axis
mov dx,dragon_x_axis
add dx,24
add cx,10
mov ah,0dh
int 10h

cmp al,8
je exiit
;;/ collusion from back bottom ends here


jmp exi

exiit:

mov ax,ScoreCount
cmp HighScore,ax
jg l222
mov HighScore,ax
mov HighScoreCh,1


l222:
call GameOver
call reset
;mov ah,4ch
;int 21h

exi:
ret
collusion endp


reset proc

l1:
mov ah,00
int 16h

cmp al,' '
jne l1

mov ah,0
mov al,13h
int 10h

mov HighScoreCh,0
mov ScoreCount, 0
mov Score_x, 0
mov num, 1234
mov count, 0

mov checkM, 0

mov upCheck, 0
mov counter, 1
mov upactive, 0

;;// rows 33
;;// cols 20

mov Tree1_x_axis, 120
mov Tree1_y_axis, 100
mov Tree1_y1_axis, 290
mov Tree1_y2_axis, 290

mov dragon_x_axis, 129
mov dragon_y_axis, 50

;;// Setting Background Color 
mov ah,06h	     
mov al,0
mov cx,0
mov dh,128
mov dl,128
mov bh,15
int 10h
;;// Setting Background Color ends here 

mov line_col,0
mov line_row,150
mov eline_col,320
mov line_color,7
call horizontalLine

; call TreeDisplay
; call TreeDisplay1

;;// Calling dragon to display on canvas

;;// upper boundry line
mov line_color,0
mov line_col,0
mov line_row,0
mov eline_col,320
call upperBlock


ret
reset endp

dragonMove proc


l1:


mov ah,0Bh 
mov bh,0
mov bl,15
int 10h	

inc ScoreCount
call collusion
cmp Tree1_y_axis,0
jl l741
cmp Tree1_y1_axis,0
jl l742
cmp Tree1_y2_axis,0
jl l743

jmp l745

l741:
mov Tree1_y_axis,303
call DisplayblankTree

mov line_col,0
mov line_row,150
mov eline_col,320
mov line_color,7
call horizontalLine
jmp l745

l742:
mov Tree1_y1_axis,303
call DisplayblankTree

mov line_col,0
mov line_row,150
mov eline_col,320
mov line_color,7
call horizontalLine
jmp l745

l743:
mov Tree1_y2_axis,303
call DisplayblankTree

mov line_col,0
mov line_row,150
mov eline_col,320
mov line_color,7
call horizontalLine

l745:
sub Tree1_y_axis,2
sub Tree1_y1_axis,2
sub Tree1_y2_axis,2
dec cloud_y_axis
dec cloud_y1_axis
dec cloud_y2_axis
call TreeDisplay
;call TreeDisplay1
call CloudDisplay
call CloudDisplay1
call CloudDisplay2
call cTreeDisplay1

call ScoreBar

cmp counter,20
jg setmet
cmp counter,1
jl setmet1



call BRICKS_D
call BRICKS_D1


;;call bricksMove

mov bh,ah
mov ah,0ch
mov al,0
int 21h

call delay




mov ah,01
int 16h

;cmp upactive,1
;je l123
cmp al,' '
je up1
l123:
cmp al,'q'
je ex

cmp upCheck,1
je up
cmp upCheck,2
je down

cmp checkM,0
jne l963
mov checkM,1
mov bx,offset dragon1
call DragonDisplay
jmp l1

l963:
mov checkM,0
;call bricksDisplay
;call delay
mov bx,offset dragon2
call DragonDisplay

jmp l1

up:
mov upactive,1
mov bx,offset dragon
call DragonDisplay
sub dragon_x_axis,3
inc counter

mov line_col,0
mov line_row,150
mov eline_col,320
mov line_color,7
call horizontalLine


jmp l1

down:
mov upCheck,2
mov bx,offset dragon
call DragonDisplay
add dragon_x_axis,3
dec counter
jmp l1



setmet:
mov upCheck,2
mov counter,20
jmp l1

setmet1:
mov upCheck,0
mov counter,1
mov upactive,0
jmp l1

up1:
cmp upactive,1
je l123

mov upCheck,1
jmp up

ex:
ret
dragonMove endp


;;// tree display function
TreeDisplay proc
pop dx
mov retVal,dx

mov ax,Tree1_x_axis
mov y_val,ax
mov ax, Tree1_cols
mov cx_cols,ax
mov ax,Tree1_rows
mov cx_rows,ax
mov dx,Tree1_y_axis
mov bx,offset tree
call DrawPixel

mov dx,retVal
push dx
ret
TreeDisplay endp

TreeDisplay1 proc
pop dx
mov retVal,dx

mov ax,Tree1_x_axis
mov y_val,ax
mov ax, Tree1_cols
mov cx_cols,ax
mov ax,Tree1_rows
mov cx_rows,ax
mov dx,Tree1_y1_axis
mov bx,offset tree
call DrawPixel

mov dx,retVal
push dx
ret
TreeDisplay1 endp


cTreeDisplay1 proc
pop dx
mov retVal,dx

mov ax,cTree1_x_axis
mov y_val,ax
mov ax, Tree1_cols
mov cx_cols,ax
mov ax,cTree1_rows
mov cx_rows,ax
mov dx,Tree1_y2_axis
mov bx,offset ctree
call DrawPixel

mov dx,retVal
push dx
ret
cTreeDisplay1 endp

DisplayblankTree proc
pop dx
mov retVal,dx

mov ax,120
mov y_val,ax
mov ax, Tree1_cols
mov cx_cols,ax
mov ax,Tree1_rows
mov cx_rows,ax
mov dx,0
mov bx,offset blankTree
call DrawPixel

mov dx,retVal
push dx
ret
DisplayblankTree endp


;;// DragonDisplay fuction
DragonDisplay proc
pop dx
mov retVal,dx


mov ax,dragon_x_axis
mov y_val,ax
mov ax, dragon_cols
mov cx_cols,ax
mov ax,dragon_rows
mov cx_rows,ax
mov dx,dragon_y_axis
call DrawPixel


mov dx,retVal
push dx
ret
DragonDisplay endp
;;// DragonDisplay fuction ends here

;;// CloudDisplay fuction
CloudDisplay proc
pop dx
mov retVal,dx


mov ax,cloud_x_axis
mov y_val,ax
mov ax, cloud_cols
mov cx_cols,ax
mov ax,cloud_rows
mov cx_rows,ax
mov dx,cloud_y_axis
mov bx,offset cloud
call DrawPixel


mov dx,retVal
push dx
ret
CloudDisplay endp
;;// CloudDisplay fuction ends here

;;// CloudDisplay fuction
CloudDisplay1 proc
pop dx
mov retVal,dx


mov ax,cloud_x1_axis
mov y_val,ax
mov ax, cloud_cols
mov cx_cols,ax
mov ax,cloud_rows
mov cx_rows,ax
mov dx,cloud_y1_axis
mov bx,offset cloud
call DrawPixel


mov dx,retVal
push dx
ret
CloudDisplay1 endp
;;// CloudDisplay fuction ends here

;;// CloudDisplay fuction
CloudDisplay2 proc
pop dx
mov retVal,dx


mov ax,cloud_x_axis
mov y_val,ax
mov ax, cloud_cols
mov cx_cols,ax
mov ax,cloud_rows
mov cx_rows,ax
mov dx,cloud_y2_axis
mov bx,offset cloud
call DrawPixel


mov dx,retVal
push dx
ret
CloudDisplay2 endp
;;// CloudDisplay fuction ends here


;;;;;;;;;;;pixel coordinate and color;;;;;;
pixel macro x_axis,y_axis,color
push dx
push cx
mov ah,0ch
mov cx,x_axis
mov dx,y_axis
mov al,color
int 10h
pop cx
pop dx
endm
;;;;;;;;;;;pixel coordinate and color;;;;;; ends here


;;/// DrawPixel Function
DrawPixel proc
	mov cx,cx_rows
	mov si,0
		pixelRow:
			push dx
			push cx
			mov cx,cx_cols
				pixelCol:
					push cx
					pixel dx,y_val,[bx+si]
					pop cx
					inc dx
					inc si
				loop pixelCol
				pop cx
				inc y_val
				pop dx
			loop pixelRow	
	ret
DrawPixel endp
;;/// DrawPixel Function ends here

;;// Drawing the road
;;// Horizontal line display function
horizontalLine proc
pop dx
mov retVal,dx

mov cx,line_col
mov dx,line_row

l1:
cmp cx,eline_col
je exit1

mov ah,0ch
mov al,line_color
int 10h

inc cx
jmp l1

exit1:

mov dx,retVal
push dx
ret
horizontalLine endp
;;// Horizontal line display function ends here

;;// Drawing the road ends here


BRICKS_D proc

mov si,0

la:
cmp si,160
jge exit

mov siVal,si
mov bx,offset brickArr1
mov dx,[bx+si]

mov bx,offset BRICK
mov ax,brick2_x_axis
mov y_val,ax
mov ax, 3
mov cx_cols,ax
mov ax,1
mov cx_rows,ax
call DrawPixel

mov si,siVal
mov bx,offset brickArr1
mov dx,[bx+si]
dec dx
cmp dx,0
jle l122

l1122:
mov [bx+si],dx
add si,2
jmp la

l122:
mov dx,298
jmp l1122
exit:

ret
BRICKS_D endp

BRICKS_D1 proc

mov si,0

la:
cmp si,160
jge exit

mov siVal,si
mov bx,offset brickArr2
mov dx,[bx+si]

mov bx,offset BRICK
mov ax,brick1_x_axis
mov y_val,ax
mov ax, 3
mov cx_cols,ax
mov ax,1
mov cx_rows,ax
call DrawPixel

mov si,siVal
mov bx,offset brickArr2
mov dx,[bx+si]
dec dx
cmp dx,0
jle l122

l1122:
mov [bx+si],dx
add si,2
jmp la

l122:
mov dx,298
jmp l1122
exit:

ret
BRICKS_D1 endp


;;// ScoreBar function
ScoreBar proc
pop dx
mov retVal,dx


mov bh,0
mov bl,8
mov cx,1
mov dh,1
mov dl,8

mov dl,26
mov charAssci,'S'
call CharDisplay
inc dl
mov charAssci,'c'
call CharDisplay
inc dl
mov charAssci,'o'
call CharDisplay
inc dl
mov charAssci,'r'
call CharDisplay
inc dl
mov charAssci,'e'
call CharDisplay
inc dl
mov charAssci,' '
call CharDisplay
inc dl
mov charAssci,'='
call CharDisplay
inc dl
mov charAssci,' '
call CharDisplay
inc dl

mov Score_x,dl
push ax
mov ax,ScoreCount
mov num,ax
pop ax
mov bl,8

label2:
mov ax,num
mov dx,0
mov bx,10
div bx
push dx
inc count
mov num,ax
cmp ax,0
jne label2


label3:
pop dx
add dl,48

mov bl,8
mov charAssci,dl
mov dl,Score_x
mov dh,1
call CharDisplay
inc Score_x

dec count
cmp count,0
jne label3

mov dx,retVal
push dx
ret
ScoreBar endp
;;// ScoreBar function ends

;;/// Character display function
CharDisplay proc
mov ah,02h
int 10h
mov ah,09
mov al,charAssci
int 10h
ret
CharDisplay endp
;;//// Character display function ends here

upperBlock proc
mov cx,20
horiLoop:
push cx
call horizontalLine
pop cx
inc line_row
loop horiLoop
ret
upperBlock endp

GameOver proc

mov si,@data

mov ah,13h
mov al,0
mov bh,0
mov bl,7
mov cx,9
mov dh,1
mov dl,5
mov es,si
mov bp, offset G_over
int 10h


cmp HighScoreCh,1
jne exit123

mov ah,13h
mov al,0
mov bh,0
mov bl,8
mov cx,10
mov dh,1
mov dl,21
mov es,si
mov bp, offset H_Score
int 10h

exit123:

ret
GameOver endp

StringOutput proc

mov si,@data
mov ah,13h ; 300*220 graphics model
mov al,0   
mov bh,0  
mov bl,ColorNum 
mov cx,stringLen 
mov dh,StrRow
mov dl,StrCol
mov es,si
int 10h

ret
StringOutput endp

end