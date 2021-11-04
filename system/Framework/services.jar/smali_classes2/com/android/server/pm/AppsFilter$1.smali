.class Lcom/android/server/pm/AppsFilter$1;
.super Ljava/lang/Object;
.source "AppsFilter.java"

# interfaces
.implements Lcom/android/server/pm/AppsFilter$StateProvider$CurrentStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/AppsFilter;->onSystemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/AppsFilter;


# direct methods
.method constructor <init>(Lcom/android/server/pm/AppsFilter;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/pm/AppsFilter;

    .line 510
    iput-object p1, p0, Lcom/android/server/pm/AppsFilter$1;->this$0:Lcom/android/server/pm/AppsFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public currentState(Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;)V
    .registers 5
    .param p2, "users"    # [Landroid/content/pm/UserInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;[",
            "Landroid/content/pm/UserInfo;",
            ")V"
        }
    .end annotation

    .line 514
    .local p1, "settings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    iget-object v0, p0, Lcom/android/server/pm/AppsFilter$1;->this$0:Lcom/android/server/pm/AppsFilter;

    array-length v1, p2

    # setter for: Lcom/android/server/pm/AppsFilter;->mUserCountAtUpdateEntireShouldFilterCache:I
    invoke-static {v0, v1}, Lcom/android/server/pm/AppsFilter;->access$202(Lcom/android/server/pm/AppsFilter;I)I

    .line 515
    iget-object v0, p0, Lcom/android/server/pm/AppsFilter$1;->this$0:Lcom/android/server/pm/AppsFilter;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    # setter for: Lcom/android/server/pm/AppsFilter;->mSettingsSizeAtUpdateEntireShouldFilterCache:I
    invoke-static {v0, v1}, Lcom/android/server/pm/AppsFilter;->access$302(Lcom/android/server/pm/AppsFilter;I)I

    .line 516
    return-void
.end method
