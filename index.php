<?php
    require_once "./DB/MySQL.php";
    require_once "./DB/IDB.php";
    
    $MySQL = new MySQL();
    $MySQL->connect("localhost:3306","root","","example");     
    $sql = " SELECT * FROM song JOIN interpret ON interpret_id=interpret.id;";
    $result = $MySQL->select($sql);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./design/index.css">
    <title>Document</title>
</head>
<body>
<table>
            <tr>
                <th>id</th>
                <th>Name</th>
                <th>Interpret</th>
            </tr>
<?php
                $key = 0;
                while($key < $total = count((array)$result)){
            ?>
            <tr>
                <td><?php echo $result[$key]['id'];?></td>
                <td><?php echo $result[$key]['Name'];?></td>
                <td><?php echo $result[$key]['Username'];?></td>
            </tr>
            <?php
            $key++;
                }
            ?>
    </table>
</body>
</html>
