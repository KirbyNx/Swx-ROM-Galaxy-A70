.class public final synthetic Lcom/android/server/pm/-$$Lambda$AppsFilter$gacVR-wh9lCly1dH_EcFODiq3X8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/pm/AppsFilter$StateProvider$CurrentStateCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/AppsFilter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/AppsFilter;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$AppsFilter$gacVR-wh9lCly1dH_EcFODiq3X8;->f$0:Lcom/android/server/pm/AppsFilter;

    return-void
.end method


# virtual methods
.method public final currentState(Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$AppsFilter$gacVR-wh9lCly1dH_EcFODiq3X8;->f$0:Lcom/android/server/pm/AppsFilter;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/AppsFilter;->lambda$updateEntireShouldFilterCache$3$AppsFilter(Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;)V

    return-void
.end method
