<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Article>
 */
class ArticleFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'writer_id' => $this->faker->numberBetween(1,10),
            'course_id' => $this->faker->numberBetween(1,6),
            'article_content' => $this->faker->paragraph(),
            'article_cover' => $this->faker->imageUrl(),
            'created_date' => $this->faker->dateTimeThisYear()
        ];
    }
}
