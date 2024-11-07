<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Writer>
 */
class WriterFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'writer_name' => $this->faker->name,
            'writer_specialist' => $this->faker->jobTitle,
            'writer_profile_picture' => $this->faker->imageUrl(300, 300),
        ];
    }
}
