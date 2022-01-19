@isTest
public class ProductControllerTest {
    @isTest
    public static void TP_getProducts(){

        Product2 testProduct = new Product2(name='test');

        Test.startTest();

        Insert testProduct;

        List<Product2> testResult = ProductController.getProducts();

        System.assertEquals(1, testResult.size());

        test.stopTest();
    }

    @isTest
    public static void TB_getProducts(){

        List<Product2> products = new List<Product2>();

        for(Integer i = 0; i<150; i++){
            products.add(new Product2(name='test'+ i));
        }

        Test.startTest();

        Insert products;

        List<Product2> testResult = ProductController.getProducts();

        System.assertNotEquals(0, testResult.size());

        test.stopTest();
    }
}
