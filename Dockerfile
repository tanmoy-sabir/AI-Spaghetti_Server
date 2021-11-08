FROM pytorch/torchserve:latest-gpu
RUN python -m pip install detectron2 -f https://dl.fbaipublicfiles.com/detectron2/wheels/cu102/torch1.9/index.html
RUN pip install opencv-python
RUN mkdir AI_Model
ADD AI_Model /home/model-server/AI_Model
USER root
RUN chown -R model-server /home/model-server
USER model-server
RUN mv /home/model-server/AI_Model/config.properties /home/model-server/config.properties
RUN cp /home/model-server/AI_Model/mech_solutions_model.mar /home/model-server/model-store/

