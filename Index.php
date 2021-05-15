<?php


require __DIR__ . "/vendor/autoload.php";


$app = new Leaf\App;


$app->db()->connect("db4free.net:3306", "adminchato1", "minhasenha1", "meuqueridobanco1");



$app->get('/telas', function () use ($app) {
  $limit = $app->request()->get("limit");
  $offset = $app->request()->get("offset");

  $telas = $app->db()
    ->query("SELECT * FROM info_tela LIMIT ? OFFSET ?")
    ->bind($limit, $offset)
    ->all();

  $app->response()->json($telas);
});

$app->get('/telas/{id}', function ($id) use ($app) {
  $tela = $app->db()
    ->query("SELECT * FROM tela WHERE id = ?")
    ->bind($id)
    ->first();

  $app->response()->json($tela);
});

$app->run();