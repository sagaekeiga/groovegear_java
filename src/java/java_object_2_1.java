/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.io.PrintWriter;
import static java.lang.System.out;
import java.util.ArrayList;
import java.util.Random;

/**
 *
 * @author keiga
 */
public class java_object_2_1 {


//ブラックジャックの作成1
    
    abstract class Human {//Humanという抽象クラスを作成
        abstract public int open();//openというabstractな公開メソッドを用意
        abstract public void setCard(String ArrayList);//setCardというArrayListを引数とした、abstractな公開メソッドを用意
        abstract public void checkSum();//checkSumというabstractな公開メソッドを用意
        ArrayList<Integer> myCards = new ArrayList<Integer>();
    }
    abstract class Dealar extends Human 
    {
        ArrayList<Integer> cards = new ArrayList<Integer>();
        {
        for(int i = 1; i<14; i++){
        cards.add(i);
        cards.add(i);
        cards.add(i);
        cards.add(i);
        }
        }
        public ArrayList deal(){
        Random rand= new Random();
        Integer index = rand.nextInt(52);
        Integer index2 = rand.nextInt(52);
        cards.get(index);
        cards.get(index2);
        return cards;
    };
        public ArrayList hit(){
        Random rand= new Random();
        Integer index = rand.nextInt(52);
        cards.get(index);
        return cards;
    }
        public void setCard(String ArrayList){
        ArrayList<Integer> myCards = new ArrayList<Integer>();{
            myCards = cards;
        }
    }
        public void checkSum(){
        for(int i = 0; i<53+1;i++){//myCardsの確認
            Integer g = myCards.get(i);
            out.println(g+" ,");
        }
        if(myCards.size() > 2){
            out.println("true");
        }else{
            out.println("false");
        }
    }
        
        public int open(){//myCardsの合計値を返却
            int e = 0;
        for(int i = 0; i<53+1;i++){
            e = myCards.get(i);
            e += e;
        }
        return e;
    }
    }
    
  
 abstract class User extends Human {
     
    ArrayList<Integer> cards = new ArrayList<>();
    {//cardsというArrayListの変数を用意し、初期処理でこのcardsにすべてのトランプを持たせる。
        for (int i = 1; i<14; i++ ){
        cards.add(i);
        cards.add(i);
        cards.add(i);
        cards.add(i);
        }
    }
        public void setCard(String ArrayList){
        ArrayList<Integer> myCards = new ArrayList<Integer>();{
            myCards = cards;
        }
    }
        public void checkSum(){
        for(int i = 0; i<53+1;i++){//myCardsの確認
            Integer g = myCards.get(i);
            out.println(g+" ,");
        }
        if(myCards.size() > 2){
            out.println("true");
        }else{
            out.println("false");
        }
    }
        
        public int open(){//myCardsの合計値を返却
            int e = 0;
        for(int i = 0; i<53+1;i++){
            e = myCards.get(i);
            e += e;
        }
        return e;
    }
    }
}
