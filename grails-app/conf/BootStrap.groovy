import com.btx.Client
import com.btx.Product

class BootStrap {

    def init = { servletContext ->
        Client client = new Client(name: "First Energy Nuclear Operating Company").save()
        Client client2 = new Client(name: "Triple Tech, Inc.").save()
        Client client3 = new Client(name: "United States Department of Agriculture").save()
        Client client4 = new Client(name: "Nebraska Public Power District").save()
        Product product = new Product(name: "FPE", description: "FPE", client: client).save()
    }
    def destroy = {
    }
}
