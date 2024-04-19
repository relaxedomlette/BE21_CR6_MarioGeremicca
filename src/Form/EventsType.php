<?php

namespace App\Form;

use App\Entity\Events;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\FileType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Validator\Constraints\File;

class EventsType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            
            ->add('name', null,['attr'=> ['class' => 'form-control ','placeholder' =>'product name']])
            ->add('date', null, ['attr'=> ['widget' => 'single_text','class' => 'form-control','placeholder' =>'description']])
            ->add('description', null,['attr'=> ['class' => 'form-control','placeholder' =>'description']])
            ->add('image', null,['attr'=> ['class' => 'form-control','placeholder' =>'image']])
            ->add('capacity', null,['attr'=> ['class' => 'form-control','placeholder' =>'capacity']])
            ->add('email', null,['attr'=> ['class' => 'form-control','placeholder' =>'email']])
            ->add('phoneNumber', null,['attr'=> ['class' => 'form-control','placeholder' =>'phoneNumber']])
            ->add('streetName', null,['attr'=> ['class' => 'form-control','placeholder' =>'streetName']])
            ->add('streetNumber', null,['attr'=> ['class' => 'form-control','placeholder' =>'streetNumber']])
            ->add('ZIP', null,['attr'=> ['class' => 'form-control','placeholder' =>'ZIP']])
            ->add('city', null,['attr'=> ['class' => 'form-control','placeholder' =>'city']])
            ->add('URL', null,['attr'=> ['class' => 'form-control','placeholder' =>'URL']])
            ->add('eventType', null,['attr'=> ['class' =>'form-control','placeholder' =>'eventType']])


            ->add('image', FileType::class, [
                'label' => 'Image (jpg, png, jpeg file)',
                'attr' => ['class' => 'form-control'],
                // unmapped means that this field is not associated to any entity property
                'mapped' => false,

                // make it optional so you don't have to re-upload the PDF file
                // every time you edit the Product details
                'required' => false,

                // unmapped fields can't define their validation using attributes
                // in the associated entity, so you can use the PHP constraint classes
                'constraints' => [
                    new File([
                        'maxSize' => '3072k',
                        'mimeTypes' => [
                            'image/png',
                            'image/jpg',
                            'image/jpeg',
                            
                        ],
                        'mimeTypesMessage' => 'Please upload a valid image file',
                    ])
                ],
            ]);
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Events::class,
        ]);
    }
}
