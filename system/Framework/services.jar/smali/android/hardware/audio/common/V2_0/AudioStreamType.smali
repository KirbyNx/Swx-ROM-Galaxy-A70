.class public final Landroid/hardware/audio/common/V2_0/AudioStreamType;
.super Ljava/lang/Object;
.source "AudioStreamType.java"


# static fields
.field public static final ACCESSIBILITY:I = 0xa

.field public static final ALARM:I = 0x4

.field public static final BLUETOOTH_SCO:I = 0x6

.field public static final CNT:I = 0xd

.field public static final DEFAULT:I = -0x1

.field public static final DTMF:I = 0x8

.field public static final ENFORCED_AUDIBLE:I = 0x7

.field public static final FOR_POLICY_CNT:I = 0xc

.field public static final MIN:I = 0x0

.field public static final MUSIC:I = 0x3

.field public static final NOTIFICATION:I = 0x5

.field public static final PATCH:I = 0xc

.field public static final PUBLIC_CNT:I = 0xb

.field public static final REROUTING:I = 0xb

.field public static final RING:I = 0x2

.field public static final SYSTEM:I = 0x1

.field public static final TTS:I = 0x9

.field public static final VOICE_CALL:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .registers 6
    .param p0, "o"    # I

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 84
    .local v1, "flipped":I
    and-int/lit8 v2, p0, -0x1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_12

    .line 85
    const-string v2, "DEFAULT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    or-int/lit8 v1, v1, -0x1

    .line 88
    :cond_12
    const-string v2, "MIN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    const-string v2, "VOICE_CALL"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_28

    .line 91
    const-string v2, "SYSTEM"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    or-int/lit8 v1, v1, 0x1

    .line 94
    :cond_28
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_34

    .line 95
    const-string v2, "RING"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    or-int/lit8 v1, v1, 0x2

    .line 98
    :cond_34
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_40

    .line 99
    const-string v2, "MUSIC"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    or-int/lit8 v1, v1, 0x3

    .line 102
    :cond_40
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4c

    .line 103
    const-string v2, "ALARM"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    or-int/lit8 v1, v1, 0x4

    .line 106
    :cond_4c
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_58

    .line 107
    const-string v2, "NOTIFICATION"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    or-int/lit8 v1, v1, 0x5

    .line 110
    :cond_58
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_64

    .line 111
    const-string v2, "BLUETOOTH_SCO"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    or-int/lit8 v1, v1, 0x6

    .line 114
    :cond_64
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_70

    .line 115
    const-string v2, "ENFORCED_AUDIBLE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    or-int/lit8 v1, v1, 0x7

    .line 118
    :cond_70
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_7d

    .line 119
    const-string v2, "DTMF"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    or-int/lit8 v1, v1, 0x8

    .line 122
    :cond_7d
    and-int/lit8 v2, p0, 0x9

    const/16 v3, 0x9

    if-ne v2, v3, :cond_8a

    .line 123
    const-string v2, "TTS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    or-int/lit8 v1, v1, 0x9

    .line 126
    :cond_8a
    and-int/lit8 v2, p0, 0xa

    const/16 v3, 0xa

    if-ne v2, v3, :cond_97

    .line 127
    const-string v2, "ACCESSIBILITY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    or-int/lit8 v1, v1, 0xa

    .line 130
    :cond_97
    and-int/lit8 v2, p0, 0xb

    const/16 v3, 0xb

    if-ne v2, v3, :cond_a4

    .line 131
    const-string v2, "REROUTING"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    or-int/lit8 v1, v1, 0xb

    .line 134
    :cond_a4
    and-int/lit8 v2, p0, 0xc

    const/16 v4, 0xc

    if-ne v2, v4, :cond_b1

    .line 135
    const-string v2, "PATCH"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    or-int/lit8 v1, v1, 0xc

    .line 138
    :cond_b1
    and-int/lit8 v2, p0, 0xb

    if-ne v2, v3, :cond_bc

    .line 139
    const-string v2, "PUBLIC_CNT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    or-int/lit8 v1, v1, 0xb

    .line 142
    :cond_bc
    and-int/lit8 v2, p0, 0xc

    if-ne v2, v4, :cond_c7

    .line 143
    const-string v2, "FOR_POLICY_CNT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    or-int/lit8 v1, v1, 0xc

    .line 146
    :cond_c7
    and-int/lit8 v2, p0, 0xd

    const/16 v3, 0xd

    if-ne v2, v3, :cond_d4

    .line 147
    const-string v2, "CNT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    or-int/lit8 v1, v1, 0xd

    .line 150
    :cond_d4
    if-eq p0, v1, :cond_f0

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    not-int v3, v1

    and-int/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    :cond_f0
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .registers 3
    .param p0, "o"    # I

    .line 24
    const/4 v0, -0x1

    if-ne p0, v0, :cond_6

    .line 25
    const-string v0, "DEFAULT"

    return-object v0

    .line 27
    :cond_6
    if-nez p0, :cond_b

    .line 28
    const-string v0, "MIN"

    return-object v0

    .line 30
    :cond_b
    if-nez p0, :cond_10

    .line 31
    const-string v0, "VOICE_CALL"

    return-object v0

    .line 33
    :cond_10
    const/4 v0, 0x1

    if-ne p0, v0, :cond_16

    .line 34
    const-string v0, "SYSTEM"

    return-object v0

    .line 36
    :cond_16
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1c

    .line 37
    const-string v0, "RING"

    return-object v0

    .line 39
    :cond_1c
    const/4 v0, 0x3

    if-ne p0, v0, :cond_22

    .line 40
    const-string v0, "MUSIC"

    return-object v0

    .line 42
    :cond_22
    const/4 v0, 0x4

    if-ne p0, v0, :cond_28

    .line 43
    const-string v0, "ALARM"

    return-object v0

    .line 45
    :cond_28
    const/4 v0, 0x5

    if-ne p0, v0, :cond_2e

    .line 46
    const-string v0, "NOTIFICATION"

    return-object v0

    .line 48
    :cond_2e
    const/4 v0, 0x6

    if-ne p0, v0, :cond_34

    .line 49
    const-string v0, "BLUETOOTH_SCO"

    return-object v0

    .line 51
    :cond_34
    const/4 v0, 0x7

    if-ne p0, v0, :cond_3a

    .line 52
    const-string v0, "ENFORCED_AUDIBLE"

    return-object v0

    .line 54
    :cond_3a
    const/16 v0, 0x8

    if-ne p0, v0, :cond_41

    .line 55
    const-string v0, "DTMF"

    return-object v0

    .line 57
    :cond_41
    const/16 v0, 0x9

    if-ne p0, v0, :cond_48

    .line 58
    const-string v0, "TTS"

    return-object v0

    .line 60
    :cond_48
    const/16 v0, 0xa

    if-ne p0, v0, :cond_4f

    .line 61
    const-string v0, "ACCESSIBILITY"

    return-object v0

    .line 63
    :cond_4f
    const/16 v0, 0xb

    if-ne p0, v0, :cond_56

    .line 64
    const-string v0, "REROUTING"

    return-object v0

    .line 66
    :cond_56
    const/16 v1, 0xc

    if-ne p0, v1, :cond_5d

    .line 67
    const-string v0, "PATCH"

    return-object v0

    .line 69
    :cond_5d
    if-ne p0, v0, :cond_62

    .line 70
    const-string v0, "PUBLIC_CNT"

    return-object v0

    .line 72
    :cond_62
    if-ne p0, v1, :cond_67

    .line 73
    const-string v0, "FOR_POLICY_CNT"

    return-object v0

    .line 75
    :cond_67
    const/16 v0, 0xd

    if-ne p0, v0, :cond_6e

    .line 76
    const-string v0, "CNT"

    return-object v0

    .line 78
    :cond_6e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
