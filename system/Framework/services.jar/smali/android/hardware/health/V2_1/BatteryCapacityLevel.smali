.class public final Landroid/hardware/health/V2_1/BatteryCapacityLevel;
.super Ljava/lang/Object;
.source "BatteryCapacityLevel.java"


# static fields
.field public static final CRITICAL:I = 0x1

.field public static final FULL:I = 0x5

.field public static final HIGH:I = 0x4

.field public static final LOW:I = 0x2

.field public static final NORMAL:I = 0x3

.field public static final UNKNOWN:I = 0x0

.field public static final UNSUPPORTED:I = -0x1


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

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 68
    .local v1, "flipped":I
    and-int/lit8 v2, p0, -0x1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_12

    .line 69
    const-string v2, "UNSUPPORTED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    or-int/lit8 v1, v1, -0x1

    .line 72
    :cond_12
    const-string v2, "UNKNOWN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_23

    .line 74
    const-string v2, "CRITICAL"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    or-int/lit8 v1, v1, 0x1

    .line 77
    :cond_23
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2f

    .line 78
    const-string v2, "LOW"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    or-int/lit8 v1, v1, 0x2

    .line 81
    :cond_2f
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3b

    .line 82
    const-string v2, "NORMAL"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    or-int/lit8 v1, v1, 0x3

    .line 85
    :cond_3b
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_47

    .line 86
    const-string v2, "HIGH"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    or-int/lit8 v1, v1, 0x4

    .line 89
    :cond_47
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_53

    .line 90
    const-string v2, "FULL"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    or-int/lit8 v1, v1, 0x5

    .line 93
    :cond_53
    if-eq p0, v1, :cond_6f

    .line 94
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

    .line 96
    :cond_6f
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .registers 3
    .param p0, "o"    # I

    .line 41
    const/4 v0, -0x1

    if-ne p0, v0, :cond_6

    .line 42
    const-string v0, "UNSUPPORTED"

    return-object v0

    .line 44
    :cond_6
    if-nez p0, :cond_b

    .line 45
    const-string v0, "UNKNOWN"

    return-object v0

    .line 47
    :cond_b
    const/4 v0, 0x1

    if-ne p0, v0, :cond_11

    .line 48
    const-string v0, "CRITICAL"

    return-object v0

    .line 50
    :cond_11
    const/4 v0, 0x2

    if-ne p0, v0, :cond_17

    .line 51
    const-string v0, "LOW"

    return-object v0

    .line 53
    :cond_17
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1d

    .line 54
    const-string v0, "NORMAL"

    return-object v0

    .line 56
    :cond_1d
    const/4 v0, 0x4

    if-ne p0, v0, :cond_23

    .line 57
    const-string v0, "HIGH"

    return-object v0

    .line 59
    :cond_23
    const/4 v0, 0x5

    if-ne p0, v0, :cond_29

    .line 60
    const-string v0, "FULL"

    return-object v0

    .line 62
    :cond_29
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
