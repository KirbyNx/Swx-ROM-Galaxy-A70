.class public final synthetic Lcom/android/server/wm/-$$Lambda$CoreLiveLog$StatisticPool$z7GJRl5y3o8kMQfhdlUbFcItY1E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/CoreLiveLog$StatisticPool$StatisticItem;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/CoreLiveLog$StatisticPool$StatisticItem;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$CoreLiveLog$StatisticPool$z7GJRl5y3o8kMQfhdlUbFcItY1E;->f$0:Lcom/android/server/wm/CoreLiveLog$StatisticPool$StatisticItem;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$CoreLiveLog$StatisticPool$z7GJRl5y3o8kMQfhdlUbFcItY1E;->f$0:Lcom/android/server/wm/CoreLiveLog$StatisticPool$StatisticItem;

    invoke-static {v0}, Lcom/android/server/wm/CoreLiveLog$StatisticPool;->lambda$addArithmeticData$0(Lcom/android/server/wm/CoreLiveLog$StatisticPool$StatisticItem;)V

    return-void
.end method
