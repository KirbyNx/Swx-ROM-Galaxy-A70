.class public final synthetic Lcom/android/server/notification/-$$Lambda$NotificationManagerService$12$ZTZXNqL177PItVxx7bau7mIR10s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/notification/NotificationManagerService$12;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService$12;ILjava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$12$ZTZXNqL177PItVxx7bau7mIR10s;->f$0:Lcom/android/server/notification/NotificationManagerService$12;

    iput p2, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$12$ZTZXNqL177PItVxx7bau7mIR10s;->f$1:I

    iput-object p3, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$12$ZTZXNqL177PItVxx7bau7mIR10s;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$12$ZTZXNqL177PItVxx7bau7mIR10s;->f$0:Lcom/android/server/notification/NotificationManagerService$12;

    iget v1, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$12$ZTZXNqL177PItVxx7bau7mIR10s;->f$1:I

    iget-object v2, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$12$ZTZXNqL177PItVxx7bau7mIR10s;->f$2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/NotificationManagerService$12;->lambda$dispatchDelayedWakeUpAndBlocked$1$NotificationManagerService$12(ILjava/lang/String;)V

    return-void
.end method
