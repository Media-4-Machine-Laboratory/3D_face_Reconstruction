#!/usr/bin/env bash

models=("easy-khair-180-gpc0.8-trans10-025000.pkl"\
  "ablation-trigridD-1-025000.pkl")

in="models"
out="out"


for model in ${models[@]}

do

    for i in 0

    do 
        python projector_withseg.py --outdir=${out} --target_img=dataset/testdata_img --network ${in}/${model} --idx ${i}
        python gen_videos_proj_withseg.py --output=${out}/${model}/${i}/PTI_render/pre.mp4 --latent=${out}/${model}/${i}/projected_w.npz --trunc 0.7 --network models/${model} --cfg Head --shapes True --output=${out}/${model}/${i}/PTI_render/pre.ply
        python gen_videos_proj_withseg.py --output=${out}/${model}/${i}/PTI_render/post.mp4 --latent=${out}/${model}/${i}/projected_w.npz --trunc 0.7 --network ${out}/${model}/${i}/fintuned_generator.pkl --cfg Head --shapes True --output=${out}/${model}/${i}/PTI_render/post.ply


    done

done