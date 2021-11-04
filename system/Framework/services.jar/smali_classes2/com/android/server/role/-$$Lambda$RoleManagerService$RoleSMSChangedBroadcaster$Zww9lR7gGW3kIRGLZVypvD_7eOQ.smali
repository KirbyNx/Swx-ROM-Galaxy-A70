.class public final synthetic Lcom/android/server/role/-$$Lambda$RoleManagerService$RoleSMSChangedBroadcaster$Zww9lR7gGW3kIRGLZVypvD_7eOQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/role/RoleManagerService$RoleSMSChangedBroadcaster;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/role/RoleManagerService$RoleSMSChangedBroadcaster;Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/role/-$$Lambda$RoleManagerService$RoleSMSChangedBroadcaster$Zww9lR7gGW3kIRGLZVypvD_7eOQ;->f$0:Lcom/android/server/role/RoleManagerService$RoleSMSChangedBroadcaster;

    iput-object p2, p0, Lcom/android/server/role/-$$Lambda$RoleManagerService$RoleSMSChangedBroadcaster$Zww9lR7gGW3kIRGLZVypvD_7eOQ;->f$1:Landroid/content/Context;

    iput p3, p0, Lcom/android/server/role/-$$Lambda$RoleManagerService$RoleSMSChangedBroadcaster$Zww9lR7gGW3kIRGLZVypvD_7eOQ;->f$2:I

    iput p4, p0, Lcom/android/server/role/-$$Lambda$RoleManagerService$RoleSMSChangedBroadcaster$Zww9lR7gGW3kIRGLZVypvD_7eOQ;->f$3:I

    iput-object p5, p0, Lcom/android/server/role/-$$Lambda$RoleManagerService$RoleSMSChangedBroadcaster$Zww9lR7gGW3kIRGLZVypvD_7eOQ;->f$4:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/role/-$$Lambda$RoleManagerService$RoleSMSChangedBroadcaster$Zww9lR7gGW3kIRGLZVypvD_7eOQ;->f$5:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget-object v0, p0, Lcom/android/server/role/-$$Lambda$RoleManagerService$RoleSMSChangedBroadcaster$Zww9lR7gGW3kIRGLZVypvD_7eOQ;->f$0:Lcom/android/server/role/RoleManagerService$RoleSMSChangedBroadcaster;

    iget-object v1, p0, Lcom/android/server/role/-$$Lambda$RoleManagerService$RoleSMSChangedBroadcaster$Zww9lR7gGW3kIRGLZVypvD_7eOQ;->f$1:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/role/-$$Lambda$RoleManagerService$RoleSMSChangedBroadcaster$Zww9lR7gGW3kIRGLZVypvD_7eOQ;->f$2:I

    iget v3, p0, Lcom/android/server/role/-$$Lambda$RoleManagerService$RoleSMSChangedBroadcaster$Zww9lR7gGW3kIRGLZVypvD_7eOQ;->f$3:I

    iget-object v4, p0, Lcom/android/server/role/-$$Lambda$RoleManagerService$RoleSMSChangedBroadcaster$Zww9lR7gGW3kIRGLZVypvD_7eOQ;->f$4:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/role/-$$Lambda$RoleManagerService$RoleSMSChangedBroadcaster$Zww9lR7gGW3kIRGLZVypvD_7eOQ;->f$5:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/role/RoleManagerService$RoleSMSChangedBroadcaster;->lambda$sendBroadcastIfNeeded$0$RoleManagerService$RoleSMSChangedBroadcaster(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
