.class Lcom/android/server/role/RoleManagerService$RoleSMSChangedBroadcaster;
.super Ljava/lang/Object;
.source "RoleManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/role/RoleManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RoleSMSChangedBroadcaster"
.end annotation


# static fields
.field private static final ACTION_ROLE_SMS_CHANGED:Ljava/lang/String; = "com.samsung.android.intent.action.ROLE_SMS_CHANGED"

.field private static final AM_PACKAGE:Ljava/lang/String; = "com.google.android.apps.messaging"

.field private static final DEBUG:Z = true

.field private static final EXTRA_KEY:Ljava/lang/String; = "type"

.field private static final SM_PACKAGE:Ljava/lang/String; = "com.samsung.android.messaging"

.field private static final TAG:Ljava/lang/String;

.field private static final TYPE_FROM_AM_TO_SM:I = 0x0

.field private static final TYPE_FROM_SM_TO_AM:I = 0x1

.field private static final TYPE_OTHER:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 475
    const-class v0, Lcom/android/server/role/RoleManagerService$RoleSMSChangedBroadcaster;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/role/RoleManagerService$RoleSMSChangedBroadcaster;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/role/RoleManagerService$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/role/RoleManagerService$1;

    .line 474
    invoke-direct {p0}, Lcom/android/server/role/RoleManagerService$RoleSMSChangedBroadcaster;-><init>()V

    return-void
.end method

.method private getType(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .param p1, "oldPackage"    # Ljava/lang/String;
    .param p2, "newPackage"    # Ljava/lang/String;

    .line 530
    const-string v0, "com.google.android.apps.messaging"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "com.samsung.android.messaging"

    if-eqz v1, :cond_12

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 531
    const/4 v0, 0x0

    return v0

    .line 532
    :cond_12
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 533
    const/4 v0, 0x1

    return v0

    .line 535
    :cond_20
    const/4 v0, -0x1

    return v0
.end method

.method private isCallerController(Landroid/content/Context;II)Z
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .line 521
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "com.android.permissioncontroller.permission.MANAGE_ROLES_FROM_CONTROLLER"

    invoke-virtual {p1, v1, p2, p3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7} :catch_b

    .line 523
    .local v1, "result":I
    if-nez v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0

    .line 524
    .end local v1    # "result":I
    :catch_b
    move-exception v1

    .line 525
    .local v1, "ignored":Ljava/lang/Exception;
    return v0
.end method


# virtual methods
.method public synthetic lambda$sendBroadcastIfNeeded$0$RoleManagerService$RoleSMSChangedBroadcaster(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "oldPackage"    # Ljava/lang/String;
    .param p5, "newPackage"    # Ljava/lang/String;

    .line 497
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/role/RoleManagerService$RoleSMSChangedBroadcaster;->isCallerController(Landroid/content/Context;II)Z

    move-result v0

    if-nez v0, :cond_7

    .line 498
    return-void

    .line 500
    :cond_7
    invoke-direct {p0, p4, p5}, Lcom/android/server/role/RoleManagerService$RoleSMSChangedBroadcaster;->getType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 501
    .local v0, "type":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    .line 502
    return-void

    .line 505
    :cond_f
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.intent.action.ROLE_SMS_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 506
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.messaging"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 507
    const-string/jumbo v2, "type"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 509
    :try_start_21
    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 511
    sget-object v2, Lcom/android/server/role/RoleManagerService$RoleSMSChangedBroadcaster;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendBroadcast: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_45} :catch_46

    .line 515
    goto :goto_47

    .line 513
    :catch_46
    move-exception v2

    .line 516
    :goto_47
    return-void
.end method

.method public sendBroadcastIfNeeded(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "oldPackage"    # Ljava/lang/String;
    .param p3, "newPackage"    # Ljava/lang/String;

    .line 490
    if-eqz p2, :cond_21

    if-nez p3, :cond_5

    goto :goto_21

    .line 493
    :cond_5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 494
    .local v7, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 496
    .local v8, "uid":I
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v9

    new-instance v10, Lcom/android/server/role/-$$Lambda$RoleManagerService$RoleSMSChangedBroadcaster$Zww9lR7gGW3kIRGLZVypvD_7eOQ;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move v3, v7

    move v4, v8

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/role/-$$Lambda$RoleManagerService$RoleSMSChangedBroadcaster$Zww9lR7gGW3kIRGLZVypvD_7eOQ;-><init>(Lcom/android/server/role/RoleManagerService$RoleSMSChangedBroadcaster;Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 517
    return-void

    .line 491
    .end local v7    # "pid":I
    .end local v8    # "uid":I
    :cond_21
    :goto_21
    return-void
.end method
