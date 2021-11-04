.class public final synthetic Lcom/android/server/notification/-$$Lambda$NotificationManagerService$g1YNmeqlnExz1LONGjo5MdqVUx4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/notification/NotificationManagerService;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$g1YNmeqlnExz1LONGjo5MdqVUx4;->f$0:Lcom/android/server/notification/NotificationManagerService;

    iput-object p2, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$g1YNmeqlnExz1LONGjo5MdqVUx4;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$g1YNmeqlnExz1LONGjo5MdqVUx4;->f$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$g1YNmeqlnExz1LONGjo5MdqVUx4;->f$1:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->lambda$canceledNotificationLog$7$NotificationManagerService(Ljava/util/List;)V

    return-void
.end method
