//public class Calculator {
//}

public class Calculator extends JFrame {
    private static JButton [] button = new JButton[36];
    private static TextField tf;
    private JPanel panel;
    private JPanel panel1;



    public Gui(){
        super("Scientific Calculator");
        panel = new JPanel();
        panel1 = new JPanel(new GridLayout(0,4));

        tf = new TextField(20);
        tf.setEditable(false);
        panel.add(tf);

        button[0]=new JButton("Rad/Deg");
        button[1]=new JButton("x!");
        button[2]=new JButton("sqrt");
        button[3]=new JButton("sin");
        button[4]=new JButton("cos");
        button[5]=new JButton("tan");
        button[6]=new JButton("ln");
        button[7]=new JButton("log");
        button[8]=new JButton("1/x");
        button[9]=new JButton("e^x");
        button[10]=new JButton("x^2");
        button[11]=new JButton("y^x");
        button[12]=new JButton("|x|");
        button[13]=new JButton("pi");
        button[14]=new JButton("e");

        button[15]=new JButton("C");
        button[16]=new JButton("(");
        button[17]=new JButton(")");
        button[18]=new JButton("%");
        button[19]=new JButton("/");
        button[20]=new JButton("7");
        button[21]=new JButton("8");
        button[22]=new JButton("9");
        button[23]=new JButton("*");
        button[24]=new JButton("4");
        button[25]=new JButton("5");
        button[26]=new JButton("6");
        button[27]=new JButton("-");
        button[28]=new JButton("1");
        button[29]=new JButton("2");
        button[30]=new JButton("3");
        button[31]=new JButton("+");
        button[32]=new JButton(".");
        button[33]=new JButton("0");
        button[34] =new JButton("+/-");
        button[35] =new JButton("=");



        for(int i = 0; i<button.length;i++){
            panel1.add(button[i]);
        }


        panel.add(panel1);
        add(panel);

        HandlerClass handler = new HandlerClass();
        for(int i = 0; i<button.length;i++){
            button[i].addActionListener(handler);
        }

    }
    private class HandlerClass implements ActionListener{

        @Override
        public void actionPerformed(ActionEvent e) {
            double num1 = 0,num2;

            String alreadyDisplayed = tf.getText();
            String toDisplay = "";

            if(e.getSource()==button[33]){
                alreadyDisplayed = tf.getText();
                toDisplay = alreadyDisplayed + (button[33].getText());
                tf.setText(toDisplay);
            }
            if(e.getSource()==button[28]){
                alreadyDisplayed = tf.getText();
                toDisplay = alreadyDisplayed + (button[28].getText());
                tf.setText(toDisplay);
            }
            if(e.getSource()==button[29]){
                alreadyDisplayed = tf.getText();
                toDisplay = alreadyDisplayed + (button[29].getText());
                tf.setText(toDisplay);
            }
            if(e.getSource()==button[30]){
                alreadyDisplayed = tf.getText();
                toDisplay = alreadyDisplayed + (button[30].getText());
                tf.setText(toDisplay);
            }
            if(e.getSource()==button[24]){
                alreadyDisplayed = tf.getText();
                toDisplay = alreadyDisplayed + (button[24].getText());
                tf.setText(toDisplay);
            }
            if(e.getSource()==button[25]){
                alreadyDisplayed = tf.getText();
                toDisplay = (button[25].getText());
                tf.setText(toDisplay);
            }
            if(e.getSource()==button[26]){
                alreadyDisplayed = tf.getText();
                toDisplay = alreadyDisplayed + (button[26].getText());
                tf.setText(toDisplay);
            }
            if(e.getSource()==button[20]){
                alreadyDisplayed = tf.getText();
                toDisplay = alreadyDisplayed + (button[20].getText());
                tf.setText(toDisplay);
            }
            if(e.getSource()==button[21]){
                alreadyDisplayed = tf.getText();
                toDisplay = alreadyDisplayed + (button[21].getText());
                tf.setText(toDisplay);
            }
            if(e.getSource()==button[22]){
                alreadyDisplayed = tf.getText();
                toDisplay = alreadyDisplayed + (button[22].getText());
                tf.setText(toDisplay);
            }
            if(e.getSource()==button[31]){
                alreadyDisplayed = tf.getText();
                toDisplay = alreadyDisplayed + (button[31].getText());
                tf.setText(toDisplay);
            }}