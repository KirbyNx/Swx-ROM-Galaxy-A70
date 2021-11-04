.class public Lcom/android/server/sepunion/friends/common/FwDependency;
.super Ljava/lang/Object;
.source "FwDependency.java"


# static fields
.field private static final PRODUCT_DEV:Z

.field private static final SHELL_UID:Ljava/lang/String; = "SHELL_UID"

.field private static final SYSTEM_UID:Ljava/lang/String; = "SYSTEM_UID"

.field private static final TAG:Ljava/lang/String; = "Fw"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 26
    invoke-static {}, Lcom/android/server/sepunion/friends/common/FwDependency;->internalIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/sepunion/friends/common/FwDependency;->PRODUCT_DEV:Z

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bindServiceAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "connection"    # Landroid/content/ServiceConnection;
    .param p3, "flag"    # I
    .param p4, "handle"    # Landroid/os/UserHandle;

    .line 49
    const/4 v0, 0x0

    .line 51
    .local v0, "method":Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    :try_start_2
    const-class v2, Landroid/content/Context;

    const-string v3, "bindServiceAsUser"

    const/4 v4, 0x4

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/content/Intent;

    aput-object v6, v5, v1

    const-class v6, Landroid/content/ServiceConnection;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x2

    aput-object v6, v5, v8

    const-class v6, Landroid/os/UserHandle;

    const/4 v9, 0x3

    aput-object v6, v5, v9

    .line 52
    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    move-object v0, v2

    .line 53
    if-eqz v0, :cond_3c

    .line 54
    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v1

    aput-object p2, v2, v7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    aput-object p4, v2, v9

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_3b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_3b} :catch_3d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_3b} :catch_3d
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_3b} :catch_3d

    return v1

    .line 59
    :cond_3c
    goto :goto_41

    .line 57
    :catch_3d
    move-exception v2

    .line 58
    .local v2, "e":Ljava/lang/ReflectiveOperationException;
    invoke-static {v2}, Lcom/android/server/sepunion/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    .line 61
    .end local v2    # "e":Ljava/lang/ReflectiveOperationException;
    :goto_41
    if-nez v0, :cond_4c

    .line 62
    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Fw"

    const-string v4, "bindServiceAsUser fail to invoke method"

    invoke-static {v3, v4, v2}, Lcom/android/server/sepunion/friends/util/LogFrs;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 65
    :cond_4c
    return v1
.end method

.method private static getProcessField(Ljava/lang/String;)I
    .registers 4
    .param p0, "fieldName"    # Ljava/lang/String;

    .line 138
    const/4 v0, -0x1

    .line 140
    .local v0, "uid":I
    :try_start_1
    const-class v1, Landroid/os/Process;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 141
    .local v1, "field":Ljava/lang/reflect/Field;
    if-eqz v1, :cond_f

    .line 142
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    move v0, v2

    .line 146
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :cond_f
    goto :goto_14

    .line 144
    :catchall_10
    move-exception v1

    .line 145
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v1}, Lcom/android/server/sepunion/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    .line 148
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_14
    return v0
.end method

.method public static getProcessShellUid()I
    .registers 1

    .line 134
    const-string v0, "SHELL_UID"

    invoke-static {v0}, Lcom/android/server/sepunion/friends/common/FwDependency;->getProcessField(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getProcessSystemUid()I
    .registers 1

    .line 130
    const-string v0, "SYSTEM_UID"

    invoke-static {v0}, Lcom/android/server/sepunion/friends/common/FwDependency;->getProcessField(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getUserHandle(Ljava/lang/String;)Landroid/os/UserHandle;
    .registers 5
    .param p0, "type"    # Ljava/lang/String;

    .line 30
    const/4 v0, 0x0

    .line 32
    .local v0, "userHandle":Landroid/os/UserHandle;
    :try_start_1
    const-class v1, Landroid/os/UserHandle;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 33
    .local v1, "field":Ljava/lang/reflect/Field;
    if-eqz v1, :cond_11

    .line 34
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    move-object v0, v2

    .line 38
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :cond_11
    goto :goto_16

    .line 36
    :catchall_12
    move-exception v1

    .line 37
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v1}, Lcom/android/server/sepunion/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    .line 40
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_16
    if-nez v0, :cond_23

    .line 41
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Fw"

    const-string/jumbo v3, "getUserHandle return null"

    invoke-static {v2, v3, v1}, Lcom/android/server/sepunion/friends/util/LogFrs;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    :cond_23
    return-object v0
.end method

.method private static internalIsProductDev()Z
    .registers 4

    .line 152
    const-class v0, Landroid/os/Debug;

    .line 157
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/os/Debug;>;"
    :try_start_2
    const-string/jumbo v1, "semIsProductDev"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 158
    .local v1, "method":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_1c

    .line 159
    const/4 v3, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_1b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_1b} :catch_1d
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_1b} :catch_1d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_1b} :catch_1d

    return v2

    .line 163
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :cond_1c
    goto :goto_21

    .line 161
    :catch_1d
    move-exception v1

    .line 162
    .local v1, "e":Ljava/lang/ReflectiveOperationException;
    invoke-static {v1}, Lcom/android/server/sepunion/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    .line 165
    .end local v1    # "e":Ljava/lang/ReflectiveOperationException;
    :goto_21
    const-string/jumbo v1, "ro.product_ship"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method public static isProductDev()Z
    .registers 2

    .line 170
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    sget-boolean v0, Lcom/android/server/sepunion/friends/common/FwDependency;->PRODUCT_DEV:Z

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method public static registerReceiverAsUser(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    .registers 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "handle"    # Landroid/os/UserHandle;
    .param p3, "filter"    # Landroid/content/IntentFilter;
    .param p4, "broadcastPermission"    # Ljava/lang/String;
    .param p5, "scheduler"    # Landroid/os/Handler;

    .line 109
    const/4 v1, 0x0

    .line 111
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    :try_start_2
    const-class v0, Landroid/content/Context;

    const-string/jumbo v3, "registerReceiverAsUser"

    const/4 v4, 0x5

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/content/BroadcastReceiver;

    aput-object v6, v5, v2

    const-class v6, Landroid/os/UserHandle;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const-class v6, Landroid/content/IntentFilter;

    const/4 v8, 0x2

    aput-object v6, v5, v8

    const-class v6, Ljava/lang/String;

    const/4 v9, 0x3

    aput-object v6, v5, v9

    const-class v6, Landroid/os/Handler;

    const/4 v10, 0x4

    aput-object v6, v5, v10

    .line 112
    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    move-object v1, v0

    .line 114
    if-eqz v1, :cond_3f

    .line 115
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v2

    aput-object p1, v0, v7

    aput-object p2, v0, v8

    aput-object p3, v0, v9

    aput-object p4, v0, v10

    aput-object p5, v0, v4

    .line 116
    invoke-virtual {v1, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;
    :try_end_3e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_3e} :catch_40
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_3e} :catch_40
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_3e} :catch_40

    .line 115
    return-object v0

    .line 120
    :cond_3f
    goto :goto_44

    .line 118
    :catch_40
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    invoke-static {v0}, Lcom/android/server/sepunion/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    .line 122
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :goto_44
    if-nez v1, :cond_50

    .line 123
    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "Fw"

    const-string/jumbo v3, "registerReceiverAsUser fail to invoke method"

    invoke-static {v2, v3, v0}, Lcom/android/server/sepunion/friends/util/LogFrs;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 126
    :cond_50
    const/4 v0, 0x0

    return-object v0
.end method

.method public static sendBroadcastAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)Z
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "handle"    # Landroid/os/UserHandle;
    .param p3, "receiverPermission"    # Ljava/lang/String;

    .line 71
    const/4 v0, 0x0

    :try_start_1
    const-class v1, Landroid/content/Context;

    const-string/jumbo v2, "sendBroadcastAsUser"

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Intent;

    aput-object v5, v4, v0

    const-class v5, Landroid/os/UserHandle;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v7, 0x2

    aput-object v5, v4, v7

    .line 72
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 73
    .local v1, "method":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_28

    .line 74
    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v0

    aput-object p2, v2, v6

    aput-object p3, v2, v7

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_29

    .line 77
    :cond_28
    return v6

    .line 79
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catchall_29
    move-exception v1

    .line 80
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v1}, Lcom/android/server/sepunion/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    .line 83
    .end local v1    # "e":Ljava/lang/Throwable;
    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Fw"

    const-string/jumbo v3, "startActivityAsUser fail to invoke method"

    invoke-static {v2, v3, v1}, Lcom/android/server/sepunion/friends/util/LogFrs;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 85
    return v0
.end method

.method public static startActivityAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)Z
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "handle"    # Landroid/os/UserHandle;

    .line 90
    const/4 v0, 0x0

    :try_start_1
    const-class v1, Landroid/content/Context;

    const-string/jumbo v2, "startActivityAsUser"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Intent;

    aput-object v5, v4, v0

    const-class v5, Landroid/os/UserHandle;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 91
    .local v1, "method":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_21

    .line 92
    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v0

    aput-object p2, v2, v6

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_22

    .line 95
    :cond_21
    return v6

    .line 97
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catchall_22
    move-exception v1

    .line 98
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v1}, Lcom/android/server/sepunion/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    .line 101
    .end local v1    # "e":Ljava/lang/Throwable;
    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Fw"

    const-string/jumbo v3, "startActivityAsUser fail to invoke method"

    invoke-static {v2, v3, v1}, Lcom/android/server/sepunion/friends/util/LogFrs;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 103
    return v0
.end method
