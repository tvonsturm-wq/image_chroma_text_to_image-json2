# clean base image containing only comfyui, comfy-cli and comfyui-manager
FROM runpod/worker-comfyui:5.5.0-base

# install custom nodes into comfyui
# (no custom nodes required for this workflow)

# download models into comfyui
RUN comfy model download --url https://huggingface.co/Comfy-Org/Lumina_Image_2.0_Repackaged/resolve/main/split_files/vae/ae.safetensors --relative-path models/vae --filename ae.safetensors
RUN comfy model download --url https://huggingface.co/silveroxides/Chroma1-HD-fp8-scaled/resolve/main/Chroma1-HD-fp8_scaled_rev2.safetensors --relative-path models/diffusion_models --filename Chroma1-HD-fp8_scaled_rev2.safetensors
RUN comfy model download --url https://huggingface.co/comfyanonymous/flux_text_encoders/resolve/main/t5xxl_fp8_e4m3fn_scaled.safetensors --relative-path models/clip --filename t5xxl_fp8_e4m3fn_scaled.safetensors

# copy all input data (like images or videos) into comfyui (uncomment and adjust if needed)
# COPY input/ /comfyui/input/
