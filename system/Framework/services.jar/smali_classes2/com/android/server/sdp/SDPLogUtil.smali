.class public Lcom/android/server/sdp/SDPLogUtil;
.super Ljava/lang/Object;
.source "SDPLogUtil.java"


# static fields
.field private static final DATE_FORMAT:Ljava/lang/String; = "yyyy-MM-dd HH:mm:ss.SSS"

.field private static final DELIMITER:Ljava/lang/String; = ","

.field private static final TYPE_DEBUG:Ljava/lang/String; = "D"

.field private static final TYPE_ERROR:Ljava/lang/String; = "E"

.field private static final TYPE_INFO:Ljava/lang/String; = "I"

.field private static final TYPE_PARAM:Ljava/lang/String; = "P"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytesToHex([B)Ljava/lang/String;
    .registers 8
    .param p0, "bytes"    # [B

    .line 134
    if-nez p0, :cond_6

    const-string/jumbo v0, "null"

    return-object v0

    .line 135
    :cond_6
    array-length v0, p0

    if-nez v0, :cond_c

    const-string v0, ""

    return-object v0

    .line 137
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 138
    .local v0, "sb":Ljava/lang/StringBuilder;
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_17
    if-ge v3, v1, :cond_30

    aget-byte v4, p0, v3

    .line 139
    .local v4, "b":B
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v2

    const-string v6, "%02X"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .end local v4    # "b":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 141
    :cond_30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getCurrentTime()Ljava/lang/String;
    .registers 6

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 124
    .local v0, "currTime":J
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 125
    .local v2, "date":Ljava/util/Date;
    new-instance v3, Ljava/text/SimpleDateFormat;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v5, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v3, v5, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 126
    .local v3, "dateFormat":Ljava/text/Format;
    invoke-virtual {v3, v2}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static makeDebugMessage(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "msg"    # Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/sdp/SDPLogUtil;->getCurrentTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "D"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/server/sdp/SDPLogUtil;->safe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static makeErrorMessages(Ljava/lang/String;Ljava/lang/Exception;)[Ljava/lang/String;
    .registers 13
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/sdp/SDPLogUtil;->getCurrentTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "E"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "prefix":Ljava/lang/String;
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    .line 58
    .local v2, "ret":[Ljava/lang/String;
    if-nez p1, :cond_23

    .line 59
    return-object v2

    .line 64
    :cond_23
    :try_start_23
    invoke-virtual {p1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 67
    .local v3, "elements":[Ljava/lang/StackTraceElement;
    const/4 v4, 0x0

    .line 68
    .local v4, "i":I
    const/4 v5, 0x1

    if-eqz p0, :cond_2d

    move v6, v5

    goto :goto_2e

    :cond_2d
    move v6, v1

    :goto_2e
    add-int/2addr v6, v5

    array-length v5, v3

    add-int/2addr v6, v5

    .line 71
    .local v6, "seqsLen":I
    new-array v5, v6, [Ljava/lang/String;

    move-object v2, v5

    .line 72
    if-eqz p0, :cond_4a

    .line 73
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .local v5, "i":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v4

    move v4, v5

    .line 74
    .end local v5    # "i":I
    .restart local v4    # "i":I
    :cond_4a
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .restart local v5    # "i":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v4

    .line 75
    array-length v4, v3

    :goto_62
    if-ge v1, v4, :cond_81

    aget-object v7, v3, v1

    .line 76
    .local v7, "element":Ljava/lang/StackTraceElement;
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "i":I
    .local v8, "i":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v5
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_7d} :catch_82

    .line 75
    .end local v7    # "element":Ljava/lang/StackTraceElement;
    add-int/lit8 v1, v1, 0x1

    move v5, v8

    goto :goto_62

    .end local v3    # "elements":[Ljava/lang/StackTraceElement;
    .end local v6    # "seqsLen":I
    .end local v8    # "i":I
    :cond_81
    goto :goto_83

    .line 78
    :catch_82
    move-exception v1

    :goto_83
    nop

    .line 80
    return-object v2
.end method

.method public static makeInfoMessages(Ljava/lang/String;Ljava/lang/Throwable;)[Ljava/lang/String;
    .registers 19
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .line 27
    move-object/from16 v1, p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/sdp/SDPLogUtil;->getCurrentTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "I"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 28
    .local v2, "prefix":Ljava/lang/String;
    move-object v3, v2

    .line 29
    .local v3, "info":Ljava/lang/String;
    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz p1, :cond_e9

    .line 31
    :try_start_25
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 32
    .local v0, "stacks":[Ljava/lang/StackTraceElement;
    array-length v7, v0
    :try_end_2a
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_25 .. :try_end_2a} :catch_e8

    const-string v8, "."

    const-string v9, "()"

    if-le v7, v6, :cond_52

    .line 33
    :try_start_30
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v0, v6

    invoke-virtual {v10}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v10, v0, v6

    invoke-virtual {v10}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_53

    :cond_52
    move-object v7, v9

    .line 34
    .local v7, "currInfo":Ljava/lang/String;
    :goto_53
    array-length v10, v0

    if-le v10, v5, :cond_78

    .line 35
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v11, v0, v5

    invoke-virtual {v11}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v0, v5

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_79

    :cond_78
    nop

    :goto_79
    move-object v8, v9

    .line 36
    .local v8, "prevInfo":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 37
    .local v9, "uid":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 38
    .local v10, "pid":Ljava/lang/String;
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 39
    .local v11, "tid":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 42
    .local v12, "userId":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v14, 0xc

    new-array v14, v14, [Ljava/lang/Object;

    const-string v15, "UserId"

    aput-object v15, v14, v4

    aput-object v12, v14, v6

    const-string v15, "UID"

    aput-object v15, v14, v5

    const/4 v15, 0x3

    aput-object v9, v14, v15

    const/4 v15, 0x4

    const-string v16, "PID"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    aput-object v10, v14, v15

    const/4 v15, 0x6

    const-string v16, "TID"

    aput-object v16, v14, v15

    const/4 v15, 0x7

    aput-object v11, v14, v15

    const/16 v15, 0x8

    const-string v16, "Curr"

    aput-object v16, v14, v15

    const/16 v15, 0x9

    aput-object v7, v14, v15

    const/16 v15, 0xa

    const-string v16, "Prev"

    aput-object v16, v14, v15

    const/16 v15, 0xb

    aput-object v8, v14, v15

    invoke-static {v14}, Lcom/android/server/sdp/SDPLogUtil;->makePairs([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13
    :try_end_e6
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_30 .. :try_end_e6} :catch_e8

    move-object v3, v13

    .line 44
    .end local v0    # "stacks":[Ljava/lang/StackTraceElement;
    .end local v7    # "currInfo":Ljava/lang/String;
    .end local v8    # "prevInfo":Ljava/lang/String;
    .end local v9    # "uid":Ljava/lang/String;
    .end local v10    # "pid":Ljava/lang/String;
    .end local v11    # "tid":Ljava/lang/String;
    .end local v12    # "userId":Ljava/lang/String;
    goto :goto_e9

    .line 43
    :catch_e8
    move-exception v0

    .line 47
    :cond_e9
    :goto_e9
    if-nez v1, :cond_f0

    .line 48
    new-array v0, v6, [Ljava/lang/String;

    aput-object v3, v0, v4

    return-object v0

    .line 50
    :cond_f0
    new-array v0, v5, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    aput-object v3, v0, v6

    return-object v0
.end method

.method public static varargs makePairs([Ljava/lang/Object;)Ljava/lang/String;
    .registers 9
    .param p0, "objs"    # [Ljava/lang/Object;

    .line 88
    if-nez p0, :cond_6

    .line 89
    const-string/jumbo v0, "null"

    return-object v0

    .line 90
    :cond_6
    array-length v0, p0

    if-nez v0, :cond_c

    .line 91
    const-string v0, "[:]"

    return-object v0

    .line 94
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    shr-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 95
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, ""

    .line 96
    .local v1, "pair":Ljava/lang/String;
    const/4 v3, 0x0

    .line 98
    .local v3, "isOpen":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_19
    array-length v5, p0

    if-ge v4, v5, :cond_72

    .line 100
    aget-object v5, p0, v4

    if-nez v5, :cond_24

    .line 101
    const-string/jumbo v5, "null"

    .local v5, "element":Ljava/lang/String;
    goto :goto_39

    .line 102
    .end local v5    # "element":Ljava/lang/String;
    :cond_24
    aget-object v5, p0, v4

    instance-of v5, v5, [B

    if-eqz v5, :cond_33

    .line 103
    aget-object v5, p0, v4

    check-cast v5, [B

    invoke-static {v5}, Lcom/android/server/sdp/SDPLogUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "element":Ljava/lang/String;
    goto :goto_39

    .line 105
    .end local v5    # "element":Ljava/lang/String;
    :cond_33
    aget-object v5, p0, v4

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 107
    .restart local v5    # "element":Ljava/lang/String;
    :goto_39
    if-nez v3, :cond_52

    .line 108
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[ "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_69

    .line 110
    :cond_52
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    :goto_69
    if-nez v3, :cond_6d

    move v6, v2

    goto :goto_6e

    :cond_6d
    const/4 v6, 0x0

    :goto_6e
    move v3, v6

    .line 98
    .end local v5    # "element":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 116
    .end local v4    # "i":I
    :cond_72
    if-eqz v3, :cond_89

    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    :cond_89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method static makeParamMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "currTime"    # Ljava/lang/String;
    .param p1, "params"    # Ljava/lang/String;

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "P"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static safe(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "val"    # Ljava/lang/String;

    .line 130
    if-eqz p0, :cond_4

    move-object v0, p0

    goto :goto_7

    :cond_4
    const-string/jumbo v0, "null"

    :goto_7
    return-object v0
.end method
