package com.springmvc.controller;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.KeyEvent;
import java.awt.event.KeyListener;
import java.util.Random;

public class MPanel extends JPanel implements KeyListener,ActionListener  {

    ImageIcon title=new ImageIcon("title.png");
    ImageIcon body=new ImageIcon("body.PNG");
    ImageIcon head=new ImageIcon("head.PNG");
    ImageIcon tail=new ImageIcon("'tail.PNG");
    ImageIcon food=new ImageIcon("food.png");
    /*ImageIcon headUP=new ImageIcon("head.PNG");
    ImageIcon headDOWN=new ImageIcon("head.PNG");
    ImageIcon headLEFT=new ImageIcon("head.PNG");*/

    int len=3;
    int [] snakex=new int [500];
    int [] snakey=new int[500];
    String direct="R";
    boolean isStarted=false;
    Timer timer=new Timer(100, (ActionListener) this);
    int foodx;
    int foody;
    Random rand=new Random();

    public MPanel(){
        initSnake() ;
        this.setFocusable(true);
        this.addKeyListener(this);
        timer.start();
    }
    public void paintComponent(Graphics g){
        super.paintComponent(g);
        this.setBackground(Color.gray);
        title.paintIcon(this,g,0,0);
        g.setColor(Color.PINK);
        g.fillRect(10,110,865,560 );
        //head.paintIcon(this,g,10,110);
        //body.paintIcon(this,g,30,110);       在后面的初始化过程中已经被初始化
        //head.paintIcon(this,g,50,110);
       /* if(direct=="R"){
            right.paintIcon(this,g,snakex[0],snakey[0] );
        }else if(direct=="L"){
            left.painIcon(this,g,snakex[0],snakey[0]);
        }else if(direct=="U") {
            up.painIcon(this, g, snakex[0], snakey[0]);      改变头的方向（由于头没变方向，所以不进行操作）
        }else if(direct=="D") {
            down.painIcon(this, g, snakex[0], snakey[0]);
        }*/
        head.paintIcon(this,g,snakex[0],snakey[0]);
        for(int i=1;i<len;i++) {
            body.paintIcon(this, g, snakex[i], snakey[i]);
        }
        food.paintIcon(this,g,foodx,foody);
        if(isStarted ==false ){
        g.setColor(Color.BLACK);
        g.setFont(new Font("arial",Font.BOLD,40));
        g.drawString("Press Space to Start",255,400);
    }
        }

    public void initSnake(){
    len=3;
    snakex[0]=50;
    snakey[0]=110;
    snakex[1]=30;
    snakey[1]=110;
    snakex[2]=10;
    snakey[2]=110;
    foodx=10+20*rand.nextInt(40);
    foody=110+20*rand.nextInt(25);
    }

    @Override
    public void keyTyped(KeyEvent e) {

    }
    @Override
    public void keyPressed(KeyEvent e) {
        int keyCode=e.getKeyCode();
        if(keyCode == KeyEvent.VK_SPACE){
            isStarted =!isStarted ;
            repaint();//设置Keylistener（识别键盘的按键）
        }else if(keyCode==KeyEvent.VK_RIGHT){
            direct="R";
        } else if(keyCode==KeyEvent.VK_LEFT){
            direct="L";
        }else if(keyCode==KeyEvent.VK_UP){
            direct="U";
        }else if(keyCode==KeyEvent.VK_DOWN){
            direct="D";
        }
    }
    @Override
    public void keyReleased(KeyEvent e) {
    }


    @Override
    public void actionPerformed(ActionEvent e) {
        if(isStarted ){for(int i=len-1;i>0;i--){
            snakex[i]=snakex[i-1];
            snakey[i]=snakey[i-1];
        }
        if(direct=="R"){
            snakex[0]=snakex [0]+20;
            if(snakex[0]>865)snakex[0]=10;
        }else if(direct=="L"){
            snakex[0]=snakex [0]-20;
            if(snakex[0]<10)snakex[0]=865;
        }else if(direct=="U"){
            snakey[0]=snakey [0]-20;
            if(snakey[0]<110)snakey[0]=660;
        }else if(direct=="D"){
            snakey[0]=snakey[0]+20;
            if(snakey[0]>660)snakey[0]=110;
        }
        if(snakex [0]>=foodx-5&&snakex [0]<=foodx+5&&snakey [0]>=foody-5&&snakey [0]<=foody+5 ){
            len++;
            foodx=10+20  *rand.nextInt(40);
            foody=110+20*rand.nextInt(25);
        }
        repaint();;
        }                               //蛇跳动快慢的时间设置
        timer.start();
    }
}