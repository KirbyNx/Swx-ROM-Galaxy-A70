.class Lcom/android/server/location/MockableLocationProvider$ListenerWrapper;
.super Ljava/lang/Object;
.source "MockableLocationProvider.java"

# interfaces
.implements Lcom/android/server/location/AbstractLocationProvider$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/MockableLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListenerWrapper"
.end annotation


# instance fields
.field private final mListenerProvider:Lcom/android/server/location/AbstractLocationProvider;

.field final synthetic this$0:Lcom/android/server/location/MockableLocationProvider;


# direct methods
.method private constructor <init>(Lcom/android/server/location/MockableLocationProvider;Lcom/android/server/location/AbstractLocationProvider;)V
    .registers 3
    .param p2, "listenerProvider"    # Lcom/android/server/location/AbstractLocationProvider;

    .line 274
    iput-object p1, p0, Lcom/android/server/location/MockableLocationProvider$ListenerWrapper;->this$0:Lcom/android/server/location/MockableLocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    iput-object p2, p0, Lcom/android/server/location/MockableLocationProvider$ListenerWrapper;->mListenerProvider:Lcom/android/server/location/AbstractLocationProvider;

    .line 276
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/location/MockableLocationProvider;Lcom/android/server/location/AbstractLocationProvider;Lcom/android/server/location/MockableLocationProvider$1;)V
    .registers 4
    .param p1, "x0"    # Lcom/android/server/location/MockableLocationProvider;
    .param p2, "x1"    # Lcom/android/server/location/AbstractLocationProvider;
    .param p3, "x2"    # Lcom/android/server/location/MockableLocationProvider$1;

    .line 270
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/MockableLocationProvider$ListenerWrapper;-><init>(Lcom/android/server/location/MockableLocationProvider;Lcom/android/server/location/AbstractLocationProvider;)V

    return-void
.end method


# virtual methods
.method public final onReportLocation(Landroid/location/Location;)V
    .registers 5
    .param p1, "location"    # Landroid/location/Location;

    .line 291
    iget-object v0, p0, Lcom/android/server/location/MockableLocationProvider$ListenerWrapper;->this$0:Lcom/android/server/location/MockableLocationProvider;

    # getter for: Lcom/android/server/location/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/location/MockableLocationProvider;->access$100(Lcom/android/server/location/MockableLocationProvider;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 292
    :try_start_7
    iget-object v1, p0, Lcom/android/server/location/MockableLocationProvider$ListenerWrapper;->mListenerProvider:Lcom/android/server/location/AbstractLocationProvider;

    iget-object v2, p0, Lcom/android/server/location/MockableLocationProvider$ListenerWrapper;->this$0:Lcom/android/server/location/MockableLocationProvider;

    # getter for: Lcom/android/server/location/MockableLocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;
    invoke-static {v2}, Lcom/android/server/location/MockableLocationProvider;->access$200(Lcom/android/server/location/MockableLocationProvider;)Lcom/android/server/location/AbstractLocationProvider;

    move-result-object v2

    if-eq v1, v2, :cond_13

    .line 293
    monitor-exit v0

    return-void

    .line 296
    :cond_13
    iget-object v1, p0, Lcom/android/server/location/MockableLocationProvider$ListenerWrapper;->this$0:Lcom/android/server/location/MockableLocationProvider;

    invoke-virtual {v1, p1}, Lcom/android/server/location/MockableLocationProvider;->reportLocation(Landroid/location/Location;)V

    .line 297
    monitor-exit v0

    .line 298
    return-void

    .line 297
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public final onReportLocation(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/Location;",
            ">;)V"
        }
    .end annotation

    .line 302
    .local p1, "locations":Ljava/util/List;, "Ljava/util/List<Landroid/location/Location;>;"
    iget-object v0, p0, Lcom/android/server/location/MockableLocationProvider$ListenerWrapper;->this$0:Lcom/android/server/location/MockableLocationProvider;

    # getter for: Lcom/android/server/location/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/location/MockableLocationProvider;->access$100(Lcom/android/server/location/MockableLocationProvider;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 303
    :try_start_7
    iget-object v1, p0, Lcom/android/server/location/MockableLocationProvider$ListenerWrapper;->mListenerProvider:Lcom/android/server/location/AbstractLocationProvider;

    iget-object v2, p0, Lcom/android/server/location/MockableLocationProvider$ListenerWrapper;->this$0:Lcom/android/server/location/MockableLocationProvider;

    # getter for: Lcom/android/server/location/MockableLocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;
    invoke-static {v2}, Lcom/android/server/location/MockableLocationProvider;->access$200(Lcom/android/server/location/MockableLocationProvider;)Lcom/android/server/location/AbstractLocationProvider;

    move-result-object v2

    if-eq v1, v2, :cond_13

    .line 304
    monitor-exit v0

    return-void

    .line 307
    :cond_13
    iget-object v1, p0, Lcom/android/server/location/MockableLocationProvider$ListenerWrapper;->this$0:Lcom/android/server/location/MockableLocationProvider;

    invoke-virtual {v1, p1}, Lcom/android/server/location/MockableLocationProvider;->reportLocation(Ljava/util/List;)V

    .line 308
    monitor-exit v0

    .line 309
    return-void

    .line 308
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public final onStateChanged(Lcom/android/server/location/AbstractLocationProvider$State;Lcom/android/server/location/AbstractLocationProvider$State;)V
    .registers 6
    .param p1, "oldState"    # Lcom/android/server/location/AbstractLocationProvider$State;
    .param p2, "newState"    # Lcom/android/server/location/AbstractLocationProvider$State;

    .line 280
    iget-object v0, p0, Lcom/android/server/location/MockableLocationProvider$ListenerWrapper;->this$0:Lcom/android/server/location/MockableLocationProvider;

    # getter for: Lcom/android/server/location/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/location/MockableLocationProvider;->access$100(Lcom/android/server/location/MockableLocationProvider;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 281
    :try_start_7
    iget-object v1, p0, Lcom/android/server/location/MockableLocationProvider$ListenerWrapper;->mListenerProvider:Lcom/android/server/location/AbstractLocationProvider;

    iget-object v2, p0, Lcom/android/server/location/MockableLocationProvider$ListenerWrapper;->this$0:Lcom/android/server/location/MockableLocationProvider;

    # getter for: Lcom/android/server/location/MockableLocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;
    invoke-static {v2}, Lcom/android/server/location/MockableLocationProvider;->access$200(Lcom/android/server/location/MockableLocationProvider;)Lcom/android/server/location/AbstractLocationProvider;

    move-result-object v2

    if-eq v1, v2, :cond_13

    .line 282
    monitor-exit v0

    return-void

    .line 285
    :cond_13
    iget-object v1, p0, Lcom/android/server/location/MockableLocationProvider$ListenerWrapper;->this$0:Lcom/android/server/location/MockableLocationProvider;

    invoke-virtual {v1, p2}, Lcom/android/server/location/MockableLocationProvider;->setState(Lcom/android/server/location/AbstractLocationProvider$State;)V

    .line 286
    monitor-exit v0

    .line 287
    return-void

    .line 286
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_1a

    throw v1
.end method
