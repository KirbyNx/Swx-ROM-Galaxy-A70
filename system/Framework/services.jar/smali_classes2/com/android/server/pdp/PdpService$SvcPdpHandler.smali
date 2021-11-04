.class final Lcom/android/server/pdp/PdpService$SvcPdpHandler;
.super Landroid/os/Handler;
.source "PdpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pdp/PdpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SvcPdpHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pdp/PdpService;


# direct methods
.method public constructor <init>(Lcom/android/server/pdp/PdpService;Landroid/os/Looper;)V
    .registers 4
    .param p2, "looper"    # Landroid/os/Looper;

    .line 58
    iput-object p1, p0, Lcom/android/server/pdp/PdpService$SvcPdpHandler;->this$0:Lcom/android/server/pdp/PdpService;

    .line 59
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 60
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 18
    .param p1, "msg"    # Landroid/os/Message;

    .line 63
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_b

    goto/16 :goto_186

    .line 65
    :cond_b
    const-string v2, "PdpService"

    const-string v4, "[PDP] handleMessage MSG_DISPLAY_PDPTOAST >"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const-string/jumbo v4, "sys.pdp.last_job"

    const-string v5, "XXXX"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 67
    .local v4, "pdpInfo":Ljava/lang/String;
    const-string/jumbo v6, "ro.boot.carrierid"

    invoke-static {v6, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 68
    .local v6, "pdpCarrierId":Ljava/lang/String;
    const-string/jumbo v7, "sys.pdp.toasted"

    invoke-static {v7, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 69
    .local v8, "pdpToasted":Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    xor-int/2addr v5, v3

    .line 70
    .local v5, "pdpInfoChecked":Z
    const-string v9, "XAC"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    xor-int/2addr v9, v3

    .line 71
    .local v9, "pdpCarrierIsNotXAC":Z
    const-string/jumbo v10, "toasted"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    xor-int/2addr v11, v3

    .line 73
    .local v11, "pdpToastChecked":Z
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[PDP] "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " : "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    if-eqz v11, :cond_17b

    if-eqz v5, :cond_17b

    .line 78
    invoke-static {v7, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v7, "[PDP] Prepare Toast"

    invoke-static {v2, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const-string v7, "detect-bkup"

    const-string/jumbo v10, "restore_done"

    const-string/jumbo v12, "restore_fail"

    const-string/jumbo v13, "remove-bkup"

    const-string v14, "backup_done"

    const-string v15, "backup_fail_cache"

    const-string/jumbo v3, "setupwizard"

    const-string v1, "backup_fail_suw"

    if-eqz v9, :cond_118

    .line 82
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10e

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ad

    const/4 v7, 0x1

    goto :goto_10f

    .line 84
    :cond_ad
    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bd

    .line 85
    iget-object v1, v0, Lcom/android/server/pdp/PdpService$SvcPdpHandler;->this$0:Lcom/android/server/pdp/PdpService;

    const/4 v3, 0x2

    const-string v7, "[PDP]\nback-up : fail\n/c partition size"

    invoke-virtual {v1, v7, v3}, Lcom/android/server/pdp/PdpService;->handleDisplayPDPToast(Ljava/lang/String;I)V

    goto/16 :goto_180

    .line 86
    :cond_bd
    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cd

    .line 87
    iget-object v1, v0, Lcom/android/server/pdp/PdpService$SvcPdpHandler;->this$0:Lcom/android/server/pdp/PdpService;

    const/4 v3, 0x3

    const-string v7, "[PDP]\nback-up : success"

    invoke-virtual {v1, v7, v3}, Lcom/android/server/pdp/PdpService;->handleDisplayPDPToast(Ljava/lang/String;I)V

    goto/16 :goto_180

    .line 88
    :cond_cd
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_de

    .line 89
    iget-object v1, v0, Lcom/android/server/pdp/PdpService$SvcPdpHandler;->this$0:Lcom/android/server/pdp/PdpService;

    const/16 v3, 0x11

    const-string v7, "[PDP]\ndelete the back-up files : done"

    invoke-virtual {v1, v7, v3}, Lcom/android/server/pdp/PdpService;->handleDisplayPDPToast(Ljava/lang/String;I)V

    goto/16 :goto_180

    .line 90
    :cond_de
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v3, 0x56

    if-eqz v1, :cond_ef

    .line 91
    iget-object v1, v0, Lcom/android/server/pdp/PdpService$SvcPdpHandler;->this$0:Lcom/android/server/pdp/PdpService;

    const-string v7, "[PDP]\nrestore : fail\nPlease download a userdata.img file again."

    invoke-virtual {v1, v7, v3}, Lcom/android/server/pdp/PdpService;->handleDisplayPDPToast(Ljava/lang/String;I)V

    goto/16 :goto_180

    .line 93
    :cond_ef
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_fe

    .line 94
    iget-object v1, v0, Lcom/android/server/pdp/PdpService$SvcPdpHandler;->this$0:Lcom/android/server/pdp/PdpService;

    const-string v7, "[PDP]\nrestore : success"

    invoke-virtual {v1, v7, v3}, Lcom/android/server/pdp/PdpService;->handleDisplayPDPToast(Ljava/lang/String;I)V

    goto/16 :goto_180

    .line 95
    :cond_fe
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_180

    .line 96
    iget-object v1, v0, Lcom/android/server/pdp/PdpService$SvcPdpHandler;->this$0:Lcom/android/server/pdp/PdpService;

    const-string v3, "[PDP]\nback-up files are detected"

    const/4 v7, 0x1

    invoke-virtual {v1, v3, v7}, Lcom/android/server/pdp/PdpService;->handleDisplayPDPToast(Ljava/lang/String;I)V

    goto/16 :goto_180

    .line 82
    :cond_10e
    const/4 v7, 0x1

    .line 83
    :goto_10f
    iget-object v1, v0, Lcom/android/server/pdp/PdpService$SvcPdpHandler;->this$0:Lcom/android/server/pdp/PdpService;

    const-string v3, "[PDP]\nback-up : fail\nsetup-wizard [ FINISH ]"

    invoke-virtual {v1, v3, v7}, Lcom/android/server/pdp/PdpService;->handleDisplayPDPToast(Ljava/lang/String;I)V

    goto/16 :goto_180

    .line 99
    :cond_118
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_175

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_125

    goto :goto_175

    .line 101
    :cond_125
    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_134

    .line 102
    iget-object v1, v0, Lcom/android/server/pdp/PdpService$SvcPdpHandler;->this$0:Lcom/android/server/pdp/PdpService;

    const-string v3, "[PDP]\n system backup : on\n back-up : NA [/c size]"

    const/4 v15, 0x1

    invoke-virtual {v1, v3, v15}, Lcom/android/server/pdp/PdpService;->handleDisplayPDPToast(Ljava/lang/String;I)V

    goto :goto_180

    .line 103
    :cond_134
    const/4 v15, 0x1

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_143

    .line 104
    iget-object v1, v0, Lcom/android/server/pdp/PdpService$SvcPdpHandler;->this$0:Lcom/android/server/pdp/PdpService;

    const-string v3, "[PDP]\n system backup : on\n manual backup : done"

    invoke-virtual {v1, v3, v15}, Lcom/android/server/pdp/PdpService;->handleDisplayPDPToast(Ljava/lang/String;I)V

    goto :goto_180

    .line 105
    :cond_143
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_151

    .line 106
    iget-object v1, v0, Lcom/android/server/pdp/PdpService$SvcPdpHandler;->this$0:Lcom/android/server/pdp/PdpService;

    const-string v3, "[PDP]\n system backup : on\n manual backup cancel : done"

    invoke-virtual {v1, v3, v15}, Lcom/android/server/pdp/PdpService;->handleDisplayPDPToast(Ljava/lang/String;I)V

    goto :goto_180

    .line 107
    :cond_151
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15d

    .line 108
    const-string v1, "[PDP] restore-fail toast is not allowed"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_180

    .line 109
    :cond_15d
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_169

    .line 110
    const-string v1, "[PDP] restore-done toast is not allowed"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_180

    .line 111
    :cond_169
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_180

    .line 112
    const-string v1, "[PDP] detect-backup toast is not allowed"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_180

    .line 100
    :cond_175
    :goto_175
    const-string v1, "[PDP] backup-fail toast is not allowed"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_180

    .line 116
    :cond_17b
    const-string v1, "[PDP] Already Toasted"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_180
    :goto_180
    const-string v1, "[PDP] handleMessage MSG_DISPLAY_PDPTOAST <"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    nop

    .line 123
    .end local v4    # "pdpInfo":Ljava/lang/String;
    .end local v5    # "pdpInfoChecked":Z
    .end local v6    # "pdpCarrierId":Ljava/lang/String;
    .end local v8    # "pdpToasted":Ljava/lang/String;
    .end local v9    # "pdpCarrierIsNotXAC":Z
    .end local v11    # "pdpToastChecked":Z
    :goto_186
    return-void
.end method
