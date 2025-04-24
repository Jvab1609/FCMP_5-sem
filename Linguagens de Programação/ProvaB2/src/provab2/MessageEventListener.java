package provab2;

/**
 *
 * @author jvalb
 */
public interface MessageEventListener {
    public void messageArrived(MessageEvent e);
    // Crio o m�todo abstrato que receber� o evento
    // E todos que quiserem ser ouvintes precisar�o implement�-lo
}
