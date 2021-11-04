.class public final synthetic Lcom/samsung/android/server/audio/-$$Lambda$DualA2dpVolumeManager$pmgS35_OD-PIfRQ8LQgzMdTb12Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/samsung/android/server/audio/-$$Lambda$DualA2dpVolumeManager$pmgS35_OD-PIfRQ8LQgzMdTb12Y;->f$0:Z

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iget-boolean v0, p0, Lcom/samsung/android/server/audio/-$$Lambda$DualA2dpVolumeManager$pmgS35_OD-PIfRQ8LQgzMdTb12Y;->f$0:Z

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Boolean;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->lambda$setAvrcpAbsoluteVolumeSupported$1(ZLjava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
