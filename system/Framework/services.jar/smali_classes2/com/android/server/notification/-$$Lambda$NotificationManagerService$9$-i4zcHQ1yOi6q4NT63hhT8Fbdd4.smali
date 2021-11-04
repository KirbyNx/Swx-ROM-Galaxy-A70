.class public final synthetic Lcom/android/server/notification/-$$Lambda$NotificationManagerService$9$-i4zcHQ1yOi6q4NT63hhT8Fbdd4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/notification/NotificationManagerService$9;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService$9;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$9$-i4zcHQ1yOi6q4NT63hhT8Fbdd4;->f$0:Lcom/android/server/notification/NotificationManagerService$9;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$9$-i4zcHQ1yOi6q4NT63hhT8Fbdd4;->f$0:Lcom/android/server/notification/NotificationManagerService$9;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService$9;->lambda$onPolicyChanged$1$NotificationManagerService$9()V

    return-void
.end method
