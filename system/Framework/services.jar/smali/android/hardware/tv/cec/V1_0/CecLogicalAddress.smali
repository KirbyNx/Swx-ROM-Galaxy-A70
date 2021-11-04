.class public final Landroid/hardware/tv/cec/V1_0/CecLogicalAddress;
.super Ljava/lang/Object;
.source "CecLogicalAddress.java"


# static fields
.field public static final AUDIO_SYSTEM:I = 0x5

.field public static final BROADCAST:I = 0xf

.field public static final FREE_USE:I = 0xe

.field public static final PLAYBACK_1:I = 0x4

.field public static final PLAYBACK_2:I = 0x8

.field public static final PLAYBACK_3:I = 0xb

.field public static final RECORDER_1:I = 0x1

.field public static final RECORDER_2:I = 0x2

.field public static final RECORDER_3:I = 0x9

.field public static final TUNER_1:I = 0x3

.field public static final TUNER_2:I = 0x6

.field public static final TUNER_3:I = 0x7

.field public static final TUNER_4:I = 0xa

.field public static final TV:I = 0x0

.field public static final UNREGISTERED:I = 0xf


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .registers 5
    .param p0, "o"    # I

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 72
    .local v1, "flipped":I
    const-string v2, "TV"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_17

    .line 74
    const-string v2, "RECORDER_1"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    or-int/lit8 v1, v1, 0x1

    .line 77
    :cond_17
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_23

    .line 78
    const-string v2, "RECORDER_2"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    or-int/lit8 v1, v1, 0x2

    .line 81
    :cond_23
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2f

    .line 82
    const-string v2, "TUNER_1"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    or-int/lit8 v1, v1, 0x3

    .line 85
    :cond_2f
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3b

    .line 86
    const-string v2, "PLAYBACK_1"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    or-int/lit8 v1, v1, 0x4

    .line 89
    :cond_3b
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_47

    .line 90
    const-string v2, "AUDIO_SYSTEM"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    or-int/lit8 v1, v1, 0x5

    .line 93
    :cond_47
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_53

    .line 94
    const-string v2, "TUNER_2"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    or-int/lit8 v1, v1, 0x6

    .line 97
    :cond_53
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_5f

    .line 98
    const-string v2, "TUNER_3"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    or-int/lit8 v1, v1, 0x7

    .line 101
    :cond_5f
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_6c

    .line 102
    const-string v2, "PLAYBACK_2"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    or-int/lit8 v1, v1, 0x8

    .line 105
    :cond_6c
    and-int/lit8 v2, p0, 0x9

    const/16 v3, 0x9

    if-ne v2, v3, :cond_79

    .line 106
    const-string v2, "RECORDER_3"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    or-int/lit8 v1, v1, 0x9

    .line 109
    :cond_79
    and-int/lit8 v2, p0, 0xa

    const/16 v3, 0xa

    if-ne v2, v3, :cond_86

    .line 110
    const-string v2, "TUNER_4"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    or-int/lit8 v1, v1, 0xa

    .line 113
    :cond_86
    and-int/lit8 v2, p0, 0xb

    const/16 v3, 0xb

    if-ne v2, v3, :cond_93

    .line 114
    const-string v2, "PLAYBACK_3"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    or-int/lit8 v1, v1, 0xb

    .line 117
    :cond_93
    and-int/lit8 v2, p0, 0xe

    const/16 v3, 0xe

    if-ne v2, v3, :cond_a0

    .line 118
    const-string v2, "FREE_USE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    or-int/lit8 v1, v1, 0xe

    .line 121
    :cond_a0
    and-int/lit8 v2, p0, 0xf

    const/16 v3, 0xf

    if-ne v2, v3, :cond_ad

    .line 122
    const-string v2, "UNREGISTERED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    or-int/lit8 v1, v1, 0xf

    .line 125
    :cond_ad
    and-int/lit8 v2, p0, 0xf

    if-ne v2, v3, :cond_b8

    .line 126
    const-string v2, "BROADCAST"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    or-int/lit8 v1, v1, 0xf

    .line 129
    :cond_b8
    if-eq p0, v1, :cond_d4

    .line 130
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

    .line 132
    :cond_d4
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .registers 3
    .param p0, "o"    # I

    .line 21
    if-nez p0, :cond_5

    .line 22
    const-string v0, "TV"

    return-object v0

    .line 24
    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    .line 25
    const-string v0, "RECORDER_1"

    return-object v0

    .line 27
    :cond_b
    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    .line 28
    const-string v0, "RECORDER_2"

    return-object v0

    .line 30
    :cond_11
    const/4 v0, 0x3

    if-ne p0, v0, :cond_17

    .line 31
    const-string v0, "TUNER_1"

    return-object v0

    .line 33
    :cond_17
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1d

    .line 34
    const-string v0, "PLAYBACK_1"

    return-object v0

    .line 36
    :cond_1d
    const/4 v0, 0x5

    if-ne p0, v0, :cond_23

    .line 37
    const-string v0, "AUDIO_SYSTEM"

    return-object v0

    .line 39
    :cond_23
    const/4 v0, 0x6

    if-ne p0, v0, :cond_29

    .line 40
    const-string v0, "TUNER_2"

    return-object v0

    .line 42
    :cond_29
    const/4 v0, 0x7

    if-ne p0, v0, :cond_2f

    .line 43
    const-string v0, "TUNER_3"

    return-object v0

    .line 45
    :cond_2f
    const/16 v0, 0x8

    if-ne p0, v0, :cond_36

    .line 46
    const-string v0, "PLAYBACK_2"

    return-object v0

    .line 48
    :cond_36
    const/16 v0, 0x9

    if-ne p0, v0, :cond_3d

    .line 49
    const-string v0, "RECORDER_3"

    return-object v0

    .line 51
    :cond_3d
    const/16 v0, 0xa

    if-ne p0, v0, :cond_44

    .line 52
    const-string v0, "TUNER_4"

    return-object v0

    .line 54
    :cond_44
    const/16 v0, 0xb

    if-ne p0, v0, :cond_4b

    .line 55
    const-string v0, "PLAYBACK_3"

    return-object v0

    .line 57
    :cond_4b
    const/16 v0, 0xe

    if-ne p0, v0, :cond_52

    .line 58
    const-string v0, "FREE_USE"

    return-object v0

    .line 60
    :cond_52
    const/16 v0, 0xf

    if-ne p0, v0, :cond_59

    .line 61
    const-string v0, "UNREGISTERED"

    return-object v0

    .line 63
    :cond_59
    if-ne p0, v0, :cond_5e

    .line 64
    const-string v0, "BROADCAST"

    return-object v0

    .line 66
    :cond_5e
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
