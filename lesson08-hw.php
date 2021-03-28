<pre>
<?php

class Data {
    private $pdo = null;
    private array $dbConfig = [
        "host" => "localhost",
        "database" => "lesson08",
        "username" => "root",
        "password" => "root",
    ];

    public function __construct()
    {
        try {
            $this->pdo = new PDO(
                "mysql:host=" . $this->dbConfig["host"] . ";dbname=" . $this->dbConfig["database"],
                $this->dbConfig["username"],
                $this->dbConfig["password"]
            );
        } catch(PDOException $e) {
            echo "Connection failed: " . $e->getMessage();
        }
    }

    public function select(string $sql): array
    {
        $query = $this->pdo->prepare($sql);
        $query->execute();
        return $query->fetchAll(PDO::FETCH_ASSOC);
    }

    public function query(string $sql)
    {
        $this->pdo->query($sql);
    }
}

/*
Используя PDO или mysqli решить задачу работы с БД

    Создать БД
    Создать таблицы в БД

				1) Справочник товаров
				2) Справочник контрагентов
				3) Заказы
				4) Оплаты

    Наполнить указанные таблицы данными
*/

$data = new Data();

// Реализовать выборку всех заказов по одному из контрагентов
echo "All orders for ";
$orders = $data->select("SELECT * FROM orders WHERE customerId = 17;");
foreach ($orders as $order) {
    print_r($order);
    echo PHP_EOL;
}

// Реализовать выборку по сумме всех заказов на контрагентов
echo "Amount for each customer:<br/>" . PHP_EOL;
$sql = <<<SQL
SELECT customers.Id, 
       customers.Name, 
       ROUND(SUM(orders.quantity * products.price)/100, 2) AS Amount
    FROM orders, products, customers
    WHERE orders.productId = products.Id 
        AND orders.Id IN (SELECT orderId FROM payments) 
        AND customers.Id = orders.customerId 
    GROUP BY orders.customerId
SQL;
$customers = $data->select($sql);
foreach ($customers as $customer) {
    print_r($customer);
    echo PHP_EOL;
}

// Реализовать выборку задвоенных контрагентов
echo "Duplicated customers!!!<br/>" . PHP_EOL;
$sql = <<<SQL
SELECT * 
    FROM customers 
    WHERE Name IN (
        SELECT Name 
            FROM customers 
            GROUP BY Name 
                HAVING COUNT(Name) > 1
    );
SQL;
$customers = $data->select($sql);
foreach ($customers as $customer) {
    print_r($customer);
    echo PHP_EOL;
}

// Реализовать выборку всех оплаченных заказов
echo "Paid orders.<br/>" . PHP_EOL;
$orders = $data->select("SELECT * FROM orders WHERE Id IN (SELECT orderId FROM payments);");
foreach ($orders as $order) {
    print_r($order);
    echo PHP_EOL;
}

?>
</pre>
