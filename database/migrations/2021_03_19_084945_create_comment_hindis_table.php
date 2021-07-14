<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCommentHindisTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('comment_hindis', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('post_hindi_id')->unsigned();
            $table->bigInteger('user_id')->unsigned();
            $table->text('comment');
            $table->foreign('post_hindi_id')
                ->references('id')->on('post_hindis')
                ->onDelete('cascade');
            $table->foreign('user_id')
                ->references('id')->on('users')
                ->onDelete('cascade');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('comment_hindis');
    }
}
