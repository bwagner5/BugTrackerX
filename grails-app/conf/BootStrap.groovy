import com.btx.Client
import com.btx.Product

class BootStrap {

    def init = { servletContext ->
        Client client = new Client(name: "First Energy Nuclear Operating Company").save()
        Product product = new Product(name: "FPE", description: "FPE", client: client).save()
    }
    def destroy = {
    }
}
