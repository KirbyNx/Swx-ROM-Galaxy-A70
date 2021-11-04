.class public final synthetic Lcom/android/server/notification/-$$Lambda$NotificationManagerService$9$DARUAjl2BH9-0W9SGvCD56guTNY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/notification/NotificationManagerService$9;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:I

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService$9;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$9$DARUAjl2BH9-0W9SGvCD56guTNY;->f$0:Lcom/android/server/notification/NotificationManagerService$9;

    iput-object p2, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$9$DARUAjl2BH9-0W9SGvCD56guTNY;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$9$DARUAjl2BH9-0W9SGvCD56guTNY;->f$2:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$9$DARUAjl2BH9-0W9SGvCD56guTNY;->f$3:I

    iput p5, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$9$DARUAjl2BH9-0W9SGvCD56guTNY;->f$4:I

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 6

    iget-object v0, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$9$DARUAjl2BH9-0W9SGvCD56guTNY;->f$0:Lcom/android/server/notification/NotificationManagerService$9;

    iget-object v1, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$9$DARUAjl2BH9-0W9SGvCD56guTNY;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$9$DARUAjl2BH9-0W9SGvCD56guTNY;->f$2:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$9$DARUAjl2BH9-0W9SGvCD56guTNY;->f$3:I

    iget v4, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$9$DARUAjl2BH9-0W9SGvCD56guTNY;->f$4:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/notification/NotificationManagerService$9;->lambda$onAutomaticRuleStatusChanged$2$NotificationManagerService$9(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method
