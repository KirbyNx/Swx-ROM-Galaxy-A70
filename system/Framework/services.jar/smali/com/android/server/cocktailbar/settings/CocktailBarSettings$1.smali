.class Lcom/android/server/cocktailbar/settings/CocktailBarSettings$1;
.super Ljava/lang/Object;
.source "CocktailBarSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->updateEnabledCocktailList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;


# direct methods
.method constructor <init>(Lcom/android/server/cocktailbar/settings/CocktailBarSettings;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    .line 145
    iput-object p1, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings$1;->this$0:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 149
    iget-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings$1;->this$0:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    # getter for: Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mCocktailMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->access$000(Lcom/android/server/cocktailbar/settings/CocktailBarSettings;)Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    .line 150
    :try_start_7
    iget-object v1, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings$1;->this$0:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    # invokes: Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->updateEnabledCocktailListLocked()Z
    invoke-static {v1}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->access$100(Lcom/android/server/cocktailbar/settings/CocktailBarSettings;)Z

    .line 151
    monitor-exit v0

    .line 152
    return-void

    .line 151
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v1
.end method
