.class public final synthetic Lcom/android/server/pm/-$$Lambda$AppsFilter$6ZkOvIiHRxp0t0ig3JkKoOqIJ_U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/pm/AppsFilter$StateProvider$CurrentStateCallback;


# instance fields
.field public final synthetic f$0:Landroid/util/ArrayMap;

.field public final synthetic f$1:Landroid/util/ArrayMap;

.field public final synthetic f$2:[[Landroid/content/pm/UserInfo;


# direct methods
.method public synthetic constructor <init>(Landroid/util/ArrayMap;Landroid/util/ArrayMap;[[Landroid/content/pm/UserInfo;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$AppsFilter$6ZkOvIiHRxp0t0ig3JkKoOqIJ_U;->f$0:Landroid/util/ArrayMap;

    iput-object p2, p0, Lcom/android/server/pm/-$$Lambda$AppsFilter$6ZkOvIiHRxp0t0ig3JkKoOqIJ_U;->f$1:Landroid/util/ArrayMap;

    iput-object p3, p0, Lcom/android/server/pm/-$$Lambda$AppsFilter$6ZkOvIiHRxp0t0ig3JkKoOqIJ_U;->f$2:[[Landroid/content/pm/UserInfo;

    return-void
.end method


# virtual methods
.method public final currentState(Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$AppsFilter$6ZkOvIiHRxp0t0ig3JkKoOqIJ_U;->f$0:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/pm/-$$Lambda$AppsFilter$6ZkOvIiHRxp0t0ig3JkKoOqIJ_U;->f$1:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/pm/-$$Lambda$AppsFilter$6ZkOvIiHRxp0t0ig3JkKoOqIJ_U;->f$2:[[Landroid/content/pm/UserInfo;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/android/server/pm/AppsFilter;->lambda$updateEntireShouldFilterCacheAsync$4(Landroid/util/ArrayMap;Landroid/util/ArrayMap;[[Landroid/content/pm/UserInfo;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;)V

    return-void
.end method
