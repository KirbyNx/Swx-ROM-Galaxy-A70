.class public final synthetic Lcom/android/server/pm/-$$Lambda$AppsFilter$ecnLvZs9G6S4Ax2wEJri_L1dWdI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/pm/AppsFilter$StateProvider$CurrentStateCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/AppsFilter;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/AppsFilter;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$AppsFilter$ecnLvZs9G6S4Ax2wEJri_L1dWdI;->f$0:Lcom/android/server/pm/AppsFilter;

    iput-object p2, p0, Lcom/android/server/pm/-$$Lambda$AppsFilter$ecnLvZs9G6S4Ax2wEJri_L1dWdI;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final currentState(Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$AppsFilter$ecnLvZs9G6S4Ax2wEJri_L1dWdI;->f$0:Lcom/android/server/pm/AppsFilter;

    iget-object v1, p0, Lcom/android/server/pm/-$$Lambda$AppsFilter$ecnLvZs9G6S4Ax2wEJri_L1dWdI;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/pm/AppsFilter;->lambda$updateShouldFilterCacheForPackage$8$AppsFilter(Ljava/lang/String;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;)V

    return-void
.end method
