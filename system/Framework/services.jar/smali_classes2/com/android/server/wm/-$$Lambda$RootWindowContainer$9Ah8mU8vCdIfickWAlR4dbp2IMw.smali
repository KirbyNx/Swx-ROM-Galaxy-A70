.class public final synthetic Lcom/android/server/wm/-$$Lambda$RootWindowContainer$9Ah8mU8vCdIfickWAlR4dbp2IMw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/RootWindowContainer;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/RootWindowContainer;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$9Ah8mU8vCdIfickWAlR4dbp2IMw;->f$0:Lcom/android/server/wm/RootWindowContainer;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$9Ah8mU8vCdIfickWAlR4dbp2IMw;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$9Ah8mU8vCdIfickWAlR4dbp2IMw;->f$0:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$9Ah8mU8vCdIfickWAlR4dbp2IMw;->f$1:Ljava/lang/String;

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/RootWindowContainer;->lambda$closeSystemDialogActivities$13$RootWindowContainer(Ljava/lang/String;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method