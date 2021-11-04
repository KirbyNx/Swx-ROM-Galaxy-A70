.class public final synthetic Lcom/android/server/notification/-$$Lambda$NotificationManagerService$13$wu_C5e729dYhTLUoVuBGAdg18mw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/notification/NotificationManagerService$13;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService$13;Ljava/lang/String;II)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$13$wu_C5e729dYhTLUoVuBGAdg18mw;->f$0:Lcom/android/server/notification/NotificationManagerService$13;

    iput-object p2, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$13$wu_C5e729dYhTLUoVuBGAdg18mw;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$13$wu_C5e729dYhTLUoVuBGAdg18mw;->f$2:I

    iput p4, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$13$wu_C5e729dYhTLUoVuBGAdg18mw;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$13$wu_C5e729dYhTLUoVuBGAdg18mw;->f$0:Lcom/android/server/notification/NotificationManagerService$13;

    iget-object v1, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$13$wu_C5e729dYhTLUoVuBGAdg18mw;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$13$wu_C5e729dYhTLUoVuBGAdg18mw;->f$2:I

    iget v3, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$13$wu_C5e729dYhTLUoVuBGAdg18mw;->f$3:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/notification/NotificationManagerService$13;->lambda$removeForegroundServiceFlagFromNotification$0$NotificationManagerService$13(Ljava/lang/String;II)V

    return-void
.end method
