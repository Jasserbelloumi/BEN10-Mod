.class public Lcom/molihuan/pathselector/controller/impl/FileBeanControllerImpl;
.super Lcom/molihuan/pathselector/controller/AbstractFileBeanController;
.source "FileBeanControllerImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/molihuan/pathselector/controller/AbstractFileBeanController;-><init>()V

    return-void
.end method


# virtual methods
.method public getFileBeanImageResource(ZLjava/lang/String;Lcom/molihuan/pathselector/entity/FileBean;)I
    .locals 1
    .param p1, "isDir"    # Z
    .param p2, "extension"    # Ljava/lang/String;
    .param p3, "fileBean"    # Lcom/molihuan/pathselector/entity/FileBean;

    .line 20
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo v0, "xlsx"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "pptx"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "jpeg"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "docx"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_1

    :sswitch_4
    const-string/jumbo v0, "zip"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto/16 :goto_1

    :sswitch_5
    const-string/jumbo v0, "xls"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto/16 :goto_1

    :sswitch_6
    const-string/jumbo v0, "wav"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "ppt"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "png"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "pdf"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_a
    const-string v0, "mp4"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_b
    const-string v0, "mp3"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_1

    :sswitch_c
    const-string v0, "jpg"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_d
    const-string v0, "gif"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_e
    const-string v0, "flv"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_f
    const-string v0, "ext"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    goto :goto_1

    :sswitch_10
    const-string v0, "exe"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_11
    const-string v0, "f4v"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto :goto_1

    :sswitch_12
    const-string v0, "doc"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_13
    const-string v0, "avi"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_14
    const-string v0, "apk"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 71
    if-eqz p1, :cond_1

    .line 72
    sget v0, Lcom/molihuan/pathselector/R$mipmap;->folder_mlh:I

    .local v0, "resourceId":I
    goto :goto_2

    .line 67
    .end local v0    # "resourceId":I
    :pswitch_0
    sget v0, Lcom/molihuan/pathselector/R$mipmap;->zip_mlh:I

    .line 68
    .restart local v0    # "resourceId":I
    goto :goto_2

    .line 64
    .end local v0    # "resourceId":I
    :pswitch_1
    sget v0, Lcom/molihuan/pathselector/R$mipmap;->xls_mlh:I

    .line 65
    .restart local v0    # "resourceId":I
    goto :goto_2

    .line 60
    .end local v0    # "resourceId":I
    :pswitch_2
    sget v0, Lcom/molihuan/pathselector/R$mipmap;->wav_mlh:I

    .line 61
    .restart local v0    # "resourceId":I
    goto :goto_2

    .line 57
    .end local v0    # "resourceId":I
    :pswitch_3
    sget v0, Lcom/molihuan/pathselector/R$mipmap;->ppt_mlh:I

    .line 58
    .restart local v0    # "resourceId":I
    goto :goto_2

    .line 53
    .end local v0    # "resourceId":I
    :pswitch_4
    sget v0, Lcom/molihuan/pathselector/R$mipmap;->pdf_mlh:I

    .line 54
    .restart local v0    # "resourceId":I
    goto :goto_2

    .line 50
    .end local v0    # "resourceId":I
    :pswitch_5
    sget v0, Lcom/molihuan/pathselector/R$mipmap;->movie_mlh:I

    .line 51
    .restart local v0    # "resourceId":I
    goto :goto_2

    .line 46
    .end local v0    # "resourceId":I
    :pswitch_6
    sget v0, Lcom/molihuan/pathselector/R$mipmap;->mp3_mlh:I

    .line 47
    .restart local v0    # "resourceId":I
    goto :goto_2

    .line 43
    .end local v0    # "resourceId":I
    :pswitch_7
    sget v0, Lcom/molihuan/pathselector/R$mipmap;->png_mlh:I

    .line 44
    .restart local v0    # "resourceId":I
    goto :goto_2

    .line 38
    .end local v0    # "resourceId":I
    :pswitch_8
    sget v0, Lcom/molihuan/pathselector/R$mipmap;->gif_mlh:I

    .line 39
    .restart local v0    # "resourceId":I
    goto :goto_2

    .line 35
    .end local v0    # "resourceId":I
    :pswitch_9
    sget v0, Lcom/molihuan/pathselector/R$mipmap;->flv_mlh:I

    .line 36
    .restart local v0    # "resourceId":I
    goto :goto_2

    .line 32
    .end local v0    # "resourceId":I
    :pswitch_a
    sget v0, Lcom/molihuan/pathselector/R$mipmap;->exe_mlh:I

    .line 33
    .restart local v0    # "resourceId":I
    goto :goto_2

    .line 29
    .end local v0    # "resourceId":I
    :pswitch_b
    sget v0, Lcom/molihuan/pathselector/R$mipmap;->doc_mlh:I

    .line 30
    .restart local v0    # "resourceId":I
    goto :goto_2

    .line 25
    .end local v0    # "resourceId":I
    :pswitch_c
    sget v0, Lcom/molihuan/pathselector/R$mipmap;->avi_mlh:I

    .line 26
    .restart local v0    # "resourceId":I
    goto :goto_2

    .line 22
    .end local v0    # "resourceId":I
    :pswitch_d
    sget v0, Lcom/molihuan/pathselector/R$mipmap;->apk_mlh:I

    .line 23
    .restart local v0    # "resourceId":I
    goto :goto_2

    .line 74
    .end local v0    # "resourceId":I
    :cond_1
    sget v0, Lcom/molihuan/pathselector/R$mipmap;->documents_mlh:I

    .line 78
    .restart local v0    # "resourceId":I
    :goto_2
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x17a1c -> :sswitch_14
        0x17ad4 -> :sswitch_13
        0x18538 -> :sswitch_12
        0x185a8 -> :sswitch_11
        0x18a12 -> :sswitch_10
        0x18a21 -> :sswitch_f
        0x18c70 -> :sswitch_e
        0x18fc4 -> :sswitch_d
        0x19be1 -> :sswitch_c
        0x1a6f0 -> :sswitch_b
        0x1a6f1 -> :sswitch_a
        0x1b0f2 -> :sswitch_9
        0x1b229 -> :sswitch_8
        0x1b274 -> :sswitch_7
        0x1caec -> :sswitch_6
        0x1cfff -> :sswitch_5
        0x1d721 -> :sswitch_4
        0x2f2240 -> :sswitch_3
        0x31e068 -> :sswitch_2
        0x349c84 -> :sswitch_1
        0x383059 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
