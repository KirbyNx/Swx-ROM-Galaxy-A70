.class public Lcom/android/server/media/VolumeCtrl;
.super Ljava/lang/Object;
.source "VolumeCtrl.java"


# static fields
.field private static final ADJUST_LOWER:Ljava/lang/String; = "lower"

.field private static final ADJUST_RAISE:Ljava/lang/String; = "raise"

.field private static final ADJUST_SAME:Ljava/lang/String; = "same"

.field static final LOG_OK:Ljava/lang/String; = "[ok]"

.field static final LOG_V:Ljava/lang/String; = "[v]"

.field static final LOG_W:Ljava/lang/String; = "[w]"

.field private static final TAG:Ljava/lang/String; = "VolumeCtrl"

.field public static final USAGE:Ljava/lang/String;

.field private static final VOLUME_CONTROL_MODE_ADJUST:I = 0x2

.field private static final VOLUME_CONTROL_MODE_SET:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 41
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "the options are as follows: \n\t\t--stream STREAM selects the stream to control, see AudioManager.STREAM_*\n\t\t                controls AudioManager.STREAM_MUSIC if no stream is specified\n\t\t--set INDEX     sets the volume index value\n\t\t--adj DIRECTION adjusts the volume, use raise|same|lower for the direction\n\t\t--get           outputs the current volume\n\t\t--show          shows the UI during the volume change\n\texamples:\n\t\tadb shell media volume --show --stream 3 --set 11\n\t\tadb shell media volume --stream 0 --adj lower\n\t\tadb shell media volume --stream 3 --get\n\n\t\tSamsung custom options are as follows: \n\t\t--setfine INDEX sets the fine volume index value\n\t\t--getfine       outputs the current fine volume\n\texamples:\n\t\tadb shell media volume --show --setfine 127\n\t\tadb shell media volume --getfine\n"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/media/VolumeCtrl;->USAGE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static log(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "code"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 228
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method public static run(Lcom/android/server/media/MediaShellCommand;)V
    .registers 25
    .param p0, "cmd"    # Lcom/android/server/media/MediaShellCommand;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 75
    move-object/from16 v0, p0

    const/4 v1, 0x3

    .line 76
    .local v1, "stream":I
    const/4 v2, 0x5

    .line 77
    .local v2, "volIndex":I
    const/4 v3, 0x0

    .line 78
    .local v3, "mode":I
    const/4 v4, 0x1

    .line 79
    .local v4, "adjDir":I
    const/4 v5, 0x0

    .line 80
    .local v5, "showUi":Z
    const/4 v6, 0x0

    .line 83
    .local v6, "doGet":Z
    const/4 v7, 0x0

    .line 84
    .local v7, "device":I
    const/4 v8, 0x0

    .line 85
    .local v8, "doGetFineVolume":Z
    const/4 v9, 0x0

    .line 91
    .local v9, "doSetFineVolume":Z
    const/4 v10, 0x0

    move/from16 v17, v5

    move/from16 v18, v6

    move/from16 v19, v8

    move/from16 v20, v9

    move-object v9, v10

    move v10, v7

    .line 92
    .end local v5    # "showUi":Z
    .end local v6    # "doGet":Z
    .end local v7    # "device":I
    .end local v8    # "doGetFineVolume":Z
    .local v9, "adjustment":Ljava/lang/String;
    .local v10, "device":I
    .local v17, "showUi":Z
    .local v18, "doGet":Z
    .local v19, "doGetFineVolume":Z
    .local v20, "doSetFineVolume":Z
    :goto_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/media/MediaShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v5

    move-object v8, v5

    .local v8, "option":Ljava/lang/String;
    const/4 v13, 0x1

    const/4 v12, 0x2

    const-string v11, "[v]"

    if-eqz v5, :cond_13c

    .line 93
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_33e

    :cond_28
    goto :goto_79

    :sswitch_29
    const-string v5, "--stream"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    move v6, v12

    goto :goto_7a

    :sswitch_33
    const-string v5, "--show"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    const/4 v6, 0x0

    goto :goto_7a

    :sswitch_3d
    const-string v5, "--getfine"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    const/4 v6, 0x7

    goto :goto_7a

    :sswitch_47
    const-string v5, "--device"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    const/4 v6, 0x5

    goto :goto_7a

    :sswitch_51
    const-string v5, "--set"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    const/4 v6, 0x3

    goto :goto_7a

    :sswitch_5b
    const-string v5, "--get"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    move v6, v13

    goto :goto_7a

    :sswitch_65
    const-string v5, "--adj"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    const/4 v6, 0x4

    goto :goto_7a

    :sswitch_6f
    const-string v5, "--setfine"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    const/4 v6, 0x6

    goto :goto_7a

    :goto_79
    const/4 v6, -0x1

    :goto_7a
    packed-switch v6, :pswitch_data_360

    .line 131
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown argument "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 126
    :pswitch_94
    const/4 v5, 0x1

    .line 127
    .end local v19    # "doGetFineVolume":Z
    .local v5, "doGetFineVolume":Z
    const-string/jumbo v6, "will get fine volume"

    invoke-static {v11, v6}, Lcom/android/server/media/VolumeCtrl;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    move/from16 v19, v5

    goto/16 :goto_13a

    .line 121
    .end local v5    # "doGetFineVolume":Z
    .restart local v19    # "doGetFineVolume":Z
    :pswitch_9f
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/media/MediaShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 122
    const/4 v5, 0x1

    .line 123
    .end local v20    # "doSetFineVolume":Z
    .local v5, "doSetFineVolume":Z
    const-string/jumbo v6, "will set fine volume"

    invoke-static {v11, v6}, Lcom/android/server/media/VolumeCtrl;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    move/from16 v20, v5

    goto/16 :goto_13a

    .line 117
    .end local v5    # "doSetFineVolume":Z
    .restart local v20    # "doSetFineVolume":Z
    :pswitch_b6
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/media/MediaShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 118
    .end local v10    # "device":I
    .local v5, "device":I
    const-string/jumbo v6, "will set device"

    invoke-static {v11, v6}, Lcom/android/server/media/VolumeCtrl;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    move v10, v5

    goto :goto_13a

    .line 111
    .end local v5    # "device":I
    .restart local v10    # "device":I
    :pswitch_ca
    const/4 v3, 0x2

    .line 112
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/media/MediaShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    .line 113
    .end local v9    # "adjustment":Ljava/lang/String;
    .local v5, "adjustment":Ljava/lang/String;
    const-string/jumbo v6, "will adjust volume"

    invoke-static {v11, v6}, Lcom/android/server/media/VolumeCtrl;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    move-object v9, v5

    goto :goto_13a

    .line 106
    .end local v5    # "adjustment":Ljava/lang/String;
    .restart local v9    # "adjustment":Ljava/lang/String;
    :pswitch_d7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/media/MediaShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 107
    const/4 v3, 0x1

    .line 108
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "will set volume to index="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Lcom/android/server/media/VolumeCtrl;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    goto :goto_13a

    .line 102
    :pswitch_fa
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/media/MediaShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 103
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "will control stream="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/server/media/VolumeCtrl;->streamName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Lcom/android/server/media/VolumeCtrl;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    goto :goto_13a

    .line 98
    :pswitch_12d
    const/4 v5, 0x1

    .line 99
    .end local v18    # "doGet":Z
    .local v5, "doGet":Z
    const-string/jumbo v6, "will get volume"

    invoke-static {v11, v6}, Lcom/android/server/media/VolumeCtrl;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    move/from16 v18, v5

    goto :goto_13a

    .line 95
    .end local v5    # "doGet":Z
    .restart local v18    # "doGet":Z
    :pswitch_137
    const/4 v5, 0x1

    .line 96
    .end local v17    # "showUi":Z
    .local v5, "showUi":Z
    move/from16 v17, v5

    .line 131
    .end local v5    # "showUi":Z
    .restart local v17    # "showUi":Z
    :goto_13a
    goto/16 :goto_16

    .line 137
    :cond_13c
    if-ne v3, v12, :cond_1b3

    .line 138
    if-nez v9, :cond_146

    .line 139
    const-string v5, "Error: no valid volume adjustment (null)"

    invoke-virtual {v0, v5}, Lcom/android/server/media/MediaShellCommand;->showError(Ljava/lang/String;)V

    .line 140
    return-void

    .line 142
    :cond_146
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v7, 0x35c066

    const-string/jumbo v14, "raise"

    const-string/jumbo v15, "lower"

    const-string/jumbo v6, "same"

    if-eq v5, v7, :cond_173

    const v7, 0x6262b01

    if-eq v5, v7, :cond_16b

    const v7, 0x67427ec

    if-eq v5, v7, :cond_163

    :cond_162
    goto :goto_17b

    :cond_163
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_162

    const/4 v7, 0x0

    goto :goto_17c

    :cond_16b
    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_162

    move v7, v12

    goto :goto_17c

    :cond_173
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_162

    move v7, v13

    goto :goto_17c

    :goto_17b
    const/4 v7, -0x1

    :goto_17c
    if-eqz v7, :cond_1b2

    if-eq v7, v13, :cond_1b0

    if-eq v7, v12, :cond_1ae

    .line 147
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error: no valid volume adjustment, was "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", expected "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "|"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/server/media/MediaShellCommand;->showError(Ljava/lang/String;)V

    .line 150
    return-void

    .line 145
    :cond_1ae
    const/4 v4, -0x1

    goto :goto_1b3

    .line 144
    :cond_1b0
    const/4 v4, 0x0

    goto :goto_1b3

    .line 143
    :cond_1b2
    const/4 v4, 0x1

    .line 156
    :cond_1b3
    :goto_1b3
    const-string v5, "Connecting to AudioService"

    invoke-static {v11, v5}, Lcom/android/server/media/VolumeCtrl;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v5, "audio"

    invoke-static {v5}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v7

    .line 159
    .local v7, "audioService":Landroid/media/IAudioService;
    if-eqz v7, :cond_32f

    .line 165
    if-ne v3, v13, :cond_205

    .line 166
    invoke-interface {v7, v1}, Landroid/media/IAudioService;->getStreamMaxVolume(I)I

    move-result v5

    if-gt v2, v5, :cond_1d6

    .line 167
    invoke-interface {v7, v1}, Landroid/media/IAudioService;->getStreamMinVolume(I)I

    move-result v5

    if-ge v2, v5, :cond_1d3

    goto :goto_1d6

    :cond_1d3
    const/4 v14, 0x3

    const/4 v15, 0x0

    goto :goto_207

    .line 168
    :cond_1d6
    :goto_1d6
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    .line 169
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v15, 0x0

    aput-object v6, v5, v15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v13

    .line 170
    invoke-interface {v7, v1}, Landroid/media/IAudioService;->getStreamMinVolume(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v12

    .line 171
    invoke-interface {v7, v1}, Landroid/media/IAudioService;->getStreamMaxVolume(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v14, 0x3

    aput-object v6, v5, v14

    .line 168
    const-string v6, "Error: invalid volume index %d for stream %d (should be in [%d..%d])"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/server/media/MediaShellCommand;->showError(Ljava/lang/String;)V

    .line 172
    return-void

    .line 165
    :cond_205
    const/4 v14, 0x3

    const/4 v15, 0x0

    .line 178
    :goto_207
    move/from16 v6, v17

    .line 179
    .local v6, "flag":I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v5

    .line 180
    .local v5, "pack":Ljava/lang/String;
    if-ne v3, v13, :cond_238

    .line 181
    if-eqz v10, :cond_22c

    .line 182
    move-object/from16 v21, v8

    move-object v8, v11

    .end local v8    # "option":Ljava/lang/String;
    .local v21, "option":Ljava/lang/String;
    move-object v11, v7

    move-object/from16 v22, v9

    move v9, v12

    .end local v9    # "adjustment":Ljava/lang/String;
    .local v22, "adjustment":Ljava/lang/String;
    move v12, v1

    move/from16 v23, v13

    move v13, v2

    move v14, v6

    move-object v15, v5

    move/from16 v16, v10

    invoke-interface/range {v11 .. v16}, Landroid/media/IAudioService;->setStreamVolumeForDevice(IIILjava/lang/String;I)V

    goto :goto_245

    .line 184
    .end local v21    # "option":Ljava/lang/String;
    .end local v22    # "adjustment":Ljava/lang/String;
    .restart local v8    # "option":Ljava/lang/String;
    .restart local v9    # "adjustment":Ljava/lang/String;
    :cond_22c
    move-object/from16 v21, v8

    move-object/from16 v22, v9

    move-object v8, v11

    move v9, v12

    move/from16 v23, v13

    .end local v8    # "option":Ljava/lang/String;
    .end local v9    # "adjustment":Ljava/lang/String;
    .restart local v21    # "option":Ljava/lang/String;
    .restart local v22    # "adjustment":Ljava/lang/String;
    invoke-interface {v7, v1, v2, v6, v5}, Landroid/media/IAudioService;->setStreamVolume(IIILjava/lang/String;)V

    goto :goto_245

    .line 186
    .end local v21    # "option":Ljava/lang/String;
    .end local v22    # "adjustment":Ljava/lang/String;
    .restart local v8    # "option":Ljava/lang/String;
    .restart local v9    # "adjustment":Ljava/lang/String;
    :cond_238
    move-object/from16 v21, v8

    move-object/from16 v22, v9

    move-object v8, v11

    move v9, v12

    move/from16 v23, v13

    .end local v8    # "option":Ljava/lang/String;
    .end local v9    # "adjustment":Ljava/lang/String;
    .restart local v21    # "option":Ljava/lang/String;
    .restart local v22    # "adjustment":Ljava/lang/String;
    if-ne v3, v9, :cond_245

    .line 187
    invoke-interface {v7, v1, v4, v6, v5}, Landroid/media/IAudioService;->adjustStreamVolume(IIILjava/lang/String;)V

    .line 189
    :cond_245
    :goto_245
    if-eqz v18, :cond_2b0

    .line 190
    if-eqz v10, :cond_27a

    .line 191
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "device : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " stream("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-static {v1}, Lcom/android/server/media/VolumeCtrl;->streamName(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ") volume is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-static {v1, v10}, Landroid/media/AudioSystem;->getStreamVolumeIndex(II)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 191
    invoke-static {v8, v11}, Lcom/android/server/media/VolumeCtrl;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2b0

    .line 195
    :cond_27a
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "volume is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7, v1}, Landroid/media/IAudioService;->getStreamVolume(I)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " in range ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-interface {v7, v1}, Landroid/media/IAudioService;->getStreamMinVolume(I)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ".."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-interface {v7, v1}, Landroid/media/IAudioService;->getStreamMaxVolume(I)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 195
    invoke-static {v8, v11}, Lcom/android/server/media/VolumeCtrl;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :cond_2b0
    :goto_2b0
    if-eqz v20, :cond_307

    .line 203
    const/high16 v8, 0x200000

    or-int v11, v6, v8

    .line 204
    .local v11, "fineFlag":I
    const/4 v12, 0x3

    invoke-interface {v7, v12}, Landroid/media/IAudioService;->getStreamMaxVolume(I)I

    move-result v8

    mul-int/lit8 v8, v8, 0xa

    if-gt v2, v8, :cond_2df

    if-gez v2, :cond_2cb

    move-object v13, v5

    move v14, v6

    move-object v15, v7

    move-object/from16 v16, v21

    move-object/from16 v21, v22

    move/from16 v22, v10

    goto :goto_2e8

    .line 211
    :cond_2cb
    const/4 v8, 0x3

    const/4 v9, 0x0

    move-object v13, v5

    .end local v5    # "pack":Ljava/lang/String;
    .local v13, "pack":Ljava/lang/String;
    move-object v5, v7

    move v14, v6

    .end local v6    # "flag":I
    .local v14, "flag":I
    move v6, v8

    move-object v15, v7

    .end local v7    # "audioService":Landroid/media/IAudioService;
    .local v15, "audioService":Landroid/media/IAudioService;
    move v7, v2

    move-object/from16 v16, v21

    .end local v21    # "option":Ljava/lang/String;
    .local v16, "option":Ljava/lang/String;
    move v8, v11

    move-object/from16 v21, v22

    .end local v22    # "adjustment":Ljava/lang/String;
    .local v21, "adjustment":Ljava/lang/String;
    move/from16 v22, v10

    .end local v10    # "device":I
    .local v22, "device":I
    move-object v10, v13

    invoke-interface/range {v5 .. v10}, Landroid/media/IAudioService;->setFineVolume(IIIILjava/lang/String;)V

    .end local v11    # "fineFlag":I
    goto :goto_32d

    .line 204
    .end local v13    # "pack":Ljava/lang/String;
    .end local v14    # "flag":I
    .end local v15    # "audioService":Landroid/media/IAudioService;
    .end local v16    # "option":Ljava/lang/String;
    .restart local v5    # "pack":Ljava/lang/String;
    .restart local v6    # "flag":I
    .restart local v7    # "audioService":Landroid/media/IAudioService;
    .restart local v10    # "device":I
    .restart local v11    # "fineFlag":I
    .local v21, "option":Ljava/lang/String;
    .local v22, "adjustment":Ljava/lang/String;
    :cond_2df
    move-object v13, v5

    move v14, v6

    move-object v15, v7

    move-object/from16 v16, v21

    move-object/from16 v21, v22

    move/from16 v22, v10

    .line 206
    .end local v5    # "pack":Ljava/lang/String;
    .end local v6    # "flag":I
    .end local v7    # "audioService":Landroid/media/IAudioService;
    .end local v10    # "device":I
    .restart local v13    # "pack":Ljava/lang/String;
    .restart local v14    # "flag":I
    .restart local v15    # "audioService":Landroid/media/IAudioService;
    .restart local v16    # "option":Ljava/lang/String;
    .local v21, "adjustment":Ljava/lang/String;
    .local v22, "device":I
    :goto_2e8
    new-array v5, v9, [Ljava/lang/Object;

    .line 207
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 208
    invoke-interface {v15, v12}, Landroid/media/IAudioService;->getStreamMaxVolume(I)I

    move-result v6

    mul-int/lit8 v6, v6, 0xa

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v23

    .line 206
    const-string v6, "Error: invalid volume index %d(should be in [0..%d])"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/server/media/MediaShellCommand;->showError(Ljava/lang/String;)V

    .line 209
    return-void

    .line 213
    .end local v11    # "fineFlag":I
    .end local v13    # "pack":Ljava/lang/String;
    .end local v14    # "flag":I
    .end local v15    # "audioService":Landroid/media/IAudioService;
    .end local v16    # "option":Ljava/lang/String;
    .restart local v5    # "pack":Ljava/lang/String;
    .restart local v6    # "flag":I
    .restart local v7    # "audioService":Landroid/media/IAudioService;
    .restart local v10    # "device":I
    .local v21, "option":Ljava/lang/String;
    .local v22, "adjustment":Ljava/lang/String;
    :cond_307
    move-object v13, v5

    move v14, v6

    move-object v15, v7

    move-object/from16 v16, v21

    move-object/from16 v21, v22

    const/4 v7, 0x0

    const/4 v12, 0x3

    move/from16 v22, v10

    .end local v5    # "pack":Ljava/lang/String;
    .end local v6    # "flag":I
    .end local v7    # "audioService":Landroid/media/IAudioService;
    .end local v10    # "device":I
    .restart local v13    # "pack":Ljava/lang/String;
    .restart local v14    # "flag":I
    .restart local v15    # "audioService":Landroid/media/IAudioService;
    .restart local v16    # "option":Ljava/lang/String;
    .local v21, "adjustment":Ljava/lang/String;
    .local v22, "device":I
    if-eqz v19, :cond_32d

    .line 214
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fine volume is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v15, v12, v7}, Landroid/media/IAudioService;->getFineVolume(II)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Lcom/android/server/media/VolumeCtrl;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_32e

    .line 213
    :cond_32d
    :goto_32d
    nop

    .line 218
    :goto_32e
    return-void

    .line 160
    .end local v13    # "pack":Ljava/lang/String;
    .end local v14    # "flag":I
    .end local v15    # "audioService":Landroid/media/IAudioService;
    .end local v16    # "option":Ljava/lang/String;
    .end local v21    # "adjustment":Ljava/lang/String;
    .end local v22    # "device":I
    .restart local v7    # "audioService":Landroid/media/IAudioService;
    .restart local v8    # "option":Ljava/lang/String;
    .restart local v9    # "adjustment":Ljava/lang/String;
    .restart local v10    # "device":I
    :cond_32f
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "Error type 2"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 161
    new-instance v5, Landroid/util/AndroidException;

    const-string v6, "Can\'t connect to audio service; is the system running?"

    invoke-direct {v5, v6}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    throw v5

    :sswitch_data_33e
    .sparse-switch
        -0x370ae884 -> :sswitch_6f
        0x2900f07 -> :sswitch_65
        0x29025b6 -> :sswitch_5b
        0x29052c2 -> :sswitch_51
        0x3f786bf6 -> :sswitch_47
        0x4e2a5070 -> :sswitch_3d
        0x4f7a109d -> :sswitch_33
        0x59e29d20 -> :sswitch_29
    .end sparse-switch

    :pswitch_data_360
    .packed-switch 0x0
        :pswitch_137
        :pswitch_12d
        :pswitch_fa
        :pswitch_d7
        :pswitch_ca
        :pswitch_b6
        :pswitch_9f
        :pswitch_94
    .end packed-switch
.end method

.method static streamName(I)Ljava/lang/String;
    .registers 3
    .param p0, "stream"    # I

    .line 233
    :try_start_0
    sget-object v0, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    aget-object v0, v0, p0
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 234
    :catch_5
    move-exception v0

    .line 235
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string/jumbo v1, "invalid stream"

    return-object v1
.end method
