.class public final Lcom/android/server/hdmi/HdmiCecMessage;
.super Ljava/lang/Object;
.source "HdmiCecMessage.java"


# static fields
.field public static final EMPTY_PARAM:[B


# instance fields
.field private final mDestination:I

.field private final mOpcode:I

.field private final mParams:[B

.field private final mSource:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 32
    sget-object v0, Llibcore/util/EmptyArray;->BYTE:[B

    sput-object v0, Lcom/android/server/hdmi/HdmiCecMessage;->EMPTY_PARAM:[B

    return-void
.end method

.method public constructor <init>(III[B)V
    .registers 6
    .param p1, "source"    # I
    .param p2, "destination"    # I
    .param p3, "opcode"    # I
    .param p4, "params"    # [B

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    .line 45
    iput p2, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mDestination:I

    .line 46
    and-int/lit16 v0, p3, 0xff

    iput v0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    .line 47
    array-length v0, p4

    invoke-static {p4, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    .line 48
    return-void
.end method

.method private static filterMessageParameters(I)Z
    .registers 2
    .param p0, "opcode"    # I

    .line 279
    const/16 v0, 0x44

    if-eq p0, v0, :cond_19

    const/16 v0, 0x45

    if-eq p0, v0, :cond_19

    const/16 v0, 0x47

    if-eq p0, v0, :cond_19

    const/16 v0, 0x64

    if-eq p0, v0, :cond_19

    const/16 v0, 0xa0

    if-eq p0, v0, :cond_19

    packed-switch p0, :pswitch_data_1c

    .line 290
    const/4 v0, 0x0

    return v0

    .line 288
    :cond_19
    :pswitch_19
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_1c
    .packed-switch 0x89
        :pswitch_19
        :pswitch_19
        :pswitch_19
    .end packed-switch
.end method

.method private static opcodeToString(I)Ljava/lang/String;
    .registers 4
    .param p0, "opcode"    # I

    .line 130
    if-eqz p0, :cond_112

    const/16 v0, 0x1a

    if-eq p0, v0, :cond_10f

    const/16 v0, 0x1b

    if-eq p0, v0, :cond_10c

    const/16 v0, 0x7d

    if-eq p0, v0, :cond_109

    const/16 v0, 0x7e

    if-eq p0, v0, :cond_106

    const/16 v0, 0x99

    if-eq p0, v0, :cond_103

    const/16 v0, 0x9a

    if-eq p0, v0, :cond_100

    sparse-switch p0, :sswitch_data_116

    packed-switch p0, :pswitch_data_180

    packed-switch p0, :pswitch_data_194

    packed-switch p0, :pswitch_data_1a2

    packed-switch p0, :pswitch_data_1b4

    packed-switch p0, :pswitch_data_1be

    packed-switch p0, :pswitch_data_1d2

    .line 274
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Opcode: %02X"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 256
    :pswitch_40
    const-string v0, "Request Short Audio Descriptor"

    return-object v0

    .line 254
    :pswitch_43
    const-string v0, "Report Short Audio Descriptor"

    return-object v0

    .line 252
    :pswitch_46
    const-string v0, "Set External Timer"

    return-object v0

    .line 250
    :pswitch_49
    const-string v0, "Clear External Timer"

    return-object v0

    .line 248
    :pswitch_4c
    const-string v0, "Vendor Command With Id"

    return-object v0

    .line 246
    :pswitch_4f
    const-string v0, "Get Cec Version"

    return-object v0

    .line 244
    :pswitch_52
    const-string v0, "Cec Version"

    return-object v0

    .line 242
    :pswitch_55
    const-string v0, "InActive Source"

    return-object v0

    .line 212
    :pswitch_58
    const-string v0, "Device Vendor Id"

    return-object v0

    .line 210
    :pswitch_5b
    const-string v0, "Set Stream Path"

    return-object v0

    .line 208
    :pswitch_5e
    const-string v0, "Request Active Source"

    return-object v0

    .line 206
    :pswitch_61
    const-string v0, "Report Physical Address"

    return-object v0

    .line 204
    :pswitch_64
    const-string v0, "Give Physical Address"

    return-object v0

    .line 202
    :pswitch_67
    const-string v0, "Active Source"

    return-object v0

    .line 200
    :pswitch_6a
    const-string v0, "Routing Information"

    return-object v0

    .line 198
    :pswitch_6d
    const-string v0, "Routing Change"

    return-object v0

    .line 190
    :pswitch_70
    const-string v0, "Set System Audio Mode"

    return-object v0

    .line 188
    :pswitch_73
    const-string v0, "Give Audio Status"

    return-object v0

    .line 186
    :pswitch_76
    const-string v0, "System Audio Mode Request"

    return-object v0

    .line 180
    :pswitch_79
    const-string v0, "Set Osd Name"

    return-object v0

    .line 178
    :pswitch_7c
    const-string v0, "Give Osd Name"

    return-object v0

    .line 176
    :pswitch_7f
    const-string v0, "User Control Release"

    return-object v0

    .line 174
    :pswitch_82
    const-string v0, "User Control Pressed"

    return-object v0

    .line 172
    :pswitch_85
    const-string v0, "Timer Cleared Status"

    return-object v0

    .line 170
    :pswitch_88
    const-string v0, "Deck Control"

    return-object v0

    .line 168
    :pswitch_8b
    const-string v0, "Play"

    return-object v0

    .line 166
    :pswitch_8e
    const-string v0, "Standby"

    return-object v0

    .line 164
    :pswitch_91
    const-string v0, "Timer Status"

    return-object v0

    .line 162
    :pswitch_94
    const-string v0, "Set Analog Timer"

    return-object v0

    .line 160
    :pswitch_97
    const-string v0, "Clear Analog Timer"

    return-object v0

    .line 158
    :pswitch_9a
    const-string v0, "Set Menu Language"

    return-object v0

    .line 148
    :pswitch_9d
    const-string v0, "Record Off"

    return-object v0

    .line 146
    :pswitch_a0
    const-string v0, "Record Status"

    return-object v0

    .line 144
    :pswitch_a3
    const-string v0, "Record On"

    return-object v0

    .line 142
    :pswitch_a6
    const-string v0, "Give Tuner Device Status"

    return-object v0

    .line 140
    :pswitch_a9
    const-string v0, "Tuner Device Status"

    return-object v0

    .line 138
    :pswitch_ac
    const-string v0, "Tuner Step Decrement"

    return-object v0

    .line 136
    :pswitch_af
    const-string v0, "Tuner Step Increment"

    return-object v0

    .line 134
    :pswitch_b2
    const-string v0, "Image View On"

    return-object v0

    .line 272
    :sswitch_b5
    const-string v0, "Abort"

    return-object v0

    .line 270
    :sswitch_b8
    const-string v0, "Cdc Message"

    return-object v0

    .line 268
    :sswitch_bb
    const-string v0, "Terminate ARC"

    return-object v0

    .line 266
    :sswitch_be
    const-string v0, "Request ARC Termination"

    return-object v0

    .line 264
    :sswitch_c1
    const-string v0, "Request ARC Initiation"

    return-object v0

    .line 262
    :sswitch_c4
    const-string v0, "Report ARC Terminated"

    return-object v0

    .line 260
    :sswitch_c7
    const-string v0, "Report ARC Initiated"

    return-object v0

    .line 258
    :sswitch_ca
    const-string v0, "Initiate ARC"

    return-object v0

    .line 236
    :sswitch_cd
    const-string v0, "Set Digital Timer"

    return-object v0

    .line 234
    :sswitch_d0
    const-string v0, "Select Digital Service"

    return-object v0

    .line 232
    :sswitch_d3
    const-string v0, "Select Analog Service"

    return-object v0

    .line 230
    :sswitch_d6
    const-string v0, "Get Menu Language"

    return-object v0

    .line 228
    :sswitch_d9
    const-string v0, "Report Power Status"

    return-object v0

    .line 226
    :sswitch_dc
    const-string v0, "Give Device Power Status"

    return-object v0

    .line 224
    :sswitch_df
    const-string v0, "Menu Status"

    return-object v0

    .line 222
    :sswitch_e2
    const-string v0, "Menu Request"

    return-object v0

    .line 220
    :sswitch_e5
    const-string v0, "Give Device Vendor Id"

    return-object v0

    .line 218
    :sswitch_e8
    const-string v0, "Vendor Remote Button Up"

    return-object v0

    .line 216
    :sswitch_eb
    const-string v0, "Vendor Remote Button Down"

    return-object v0

    .line 214
    :sswitch_ee
    const-string v0, "Vendor Command"

    return-object v0

    .line 192
    :sswitch_f1
    const-string v0, "Report Audio Status"

    return-object v0

    .line 184
    :sswitch_f4
    const-string v0, "Set Timer Program Title"

    return-object v0

    .line 182
    :sswitch_f7
    const-string v0, "Set Osd String"

    return-object v0

    .line 152
    :sswitch_fa
    const-string v0, "Record Tv Screen"

    return-object v0

    .line 150
    :sswitch_fd
    const-string v0, "Text View On"

    return-object v0

    .line 240
    :cond_100
    const-string v0, "Set Audio Rate"

    return-object v0

    .line 238
    :cond_103
    const-string v0, "Clear Digital Timer"

    return-object v0

    .line 196
    :cond_106
    const-string v0, "System Audio Mode Status"

    return-object v0

    .line 194
    :cond_109
    const-string v0, "Give System Audio Mode Status"

    return-object v0

    .line 156
    :cond_10c
    const-string v0, "Deck Status"

    return-object v0

    .line 154
    :cond_10f
    const-string v0, "Give Deck Status"

    return-object v0

    .line 132
    :cond_112
    :sswitch_112
    const-string v0, "Feature Abort"

    return-object v0

    nop

    :sswitch_data_116
    .sparse-switch
        0x0 -> :sswitch_112
        0xd -> :sswitch_fd
        0xf -> :sswitch_fa
        0x64 -> :sswitch_f7
        0x67 -> :sswitch_f4
        0x7a -> :sswitch_f1
        0x89 -> :sswitch_ee
        0x8a -> :sswitch_eb
        0x8b -> :sswitch_e8
        0x8c -> :sswitch_e5
        0x8d -> :sswitch_e2
        0x8e -> :sswitch_df
        0x8f -> :sswitch_dc
        0x90 -> :sswitch_d9
        0x91 -> :sswitch_d6
        0x92 -> :sswitch_d3
        0x93 -> :sswitch_d0
        0x97 -> :sswitch_cd
        0xc0 -> :sswitch_ca
        0xc1 -> :sswitch_c7
        0xc2 -> :sswitch_c4
        0xc3 -> :sswitch_c1
        0xc4 -> :sswitch_be
        0xc5 -> :sswitch_bb
        0xf8 -> :sswitch_b8
        0xff -> :sswitch_b5
    .end sparse-switch

    :pswitch_data_180
    .packed-switch 0x4
        :pswitch_b2
        :pswitch_af
        :pswitch_ac
        :pswitch_a9
        :pswitch_a6
        :pswitch_a3
        :pswitch_a0
        :pswitch_9d
    .end packed-switch

    :pswitch_data_194
    .packed-switch 0x32
        :pswitch_9a
        :pswitch_97
        :pswitch_94
        :pswitch_91
        :pswitch_8e
    .end packed-switch

    :pswitch_data_1a2
    .packed-switch 0x41
        :pswitch_8b
        :pswitch_88
        :pswitch_85
        :pswitch_82
        :pswitch_7f
        :pswitch_7c
        :pswitch_79
    .end packed-switch

    :pswitch_data_1b4
    .packed-switch 0x70
        :pswitch_76
        :pswitch_73
        :pswitch_70
    .end packed-switch

    :pswitch_data_1be
    .packed-switch 0x80
        :pswitch_6d
        :pswitch_6a
        :pswitch_67
        :pswitch_64
        :pswitch_61
        :pswitch_5e
        :pswitch_5b
        :pswitch_58
    .end packed-switch

    :pswitch_data_1d2
    .packed-switch 0x9d
        :pswitch_55
        :pswitch_52
        :pswitch_4f
        :pswitch_4c
        :pswitch_49
        :pswitch_46
        :pswitch_43
        :pswitch_40
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "message"    # Ljava/lang/Object;

    .line 52
    instance-of v0, p1, Lcom/android/server/hdmi/HdmiCecMessage;

    const/4 v1, 0x0

    if-eqz v0, :cond_30

    .line 53
    move-object v0, p1

    check-cast v0, Lcom/android/server/hdmi/HdmiCecMessage;

    .line 54
    .local v0, "that":Lcom/android/server/hdmi/HdmiCecMessage;
    iget v2, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v3

    if-ne v2, v3, :cond_2e

    iget v2, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mDestination:I

    .line 55
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result v3

    if-ne v2, v3, :cond_2e

    iget v2, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    .line 56
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v3

    if-ne v2, v3, :cond_2e

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    .line 57
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_2e

    const/4 v1, 0x1

    goto :goto_2f

    :cond_2e
    nop

    .line 54
    :goto_2f
    return v1

    .line 59
    .end local v0    # "that":Lcom/android/server/hdmi/HdmiCecMessage;
    :cond_30
    return v1
.end method

.method public getDestination()I
    .registers 2

    .line 88
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mDestination:I

    return v0
.end method

.method public getOpcode()I
    .registers 2

    .line 98
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    return v0
.end method

.method public getParams()[B
    .registers 2

    .line 109
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    return-object v0
.end method

.method public getSource()I
    .registers 2

    .line 78
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 64
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    .line 65
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mDestination:I

    .line 66
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    .line 67
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    .line 68
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 64
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 10

    .line 114
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 115
    .local v0, "s":Ljava/lang/StringBuffer;
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    .line 116
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiCecMessage;->opcodeToString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iget v2, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mDestination:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    iget v2, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x3

    aput-object v2, v1, v5

    .line 115
    const-string v2, "<%s> %X%X:%02X"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    array-length v1, v1

    if-lez v1, :cond_73

    .line 118
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiCecMessage;->filterMessageParameters(I)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 119
    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, " <Redacted len=%d>"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_73

    .line 121
    :cond_57
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    array-length v2, v1

    move v5, v3

    :goto_5b
    if-ge v5, v2, :cond_73

    aget-byte v6, v1, v5

    .line 122
    .local v6, "data":B
    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v7, v3

    const-string v8, ":%02X"

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
    .end local v6    # "data":B
    add-int/lit8 v5, v5, 0x1

    goto :goto_5b

    .line 126
    :cond_73
    :goto_73
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
