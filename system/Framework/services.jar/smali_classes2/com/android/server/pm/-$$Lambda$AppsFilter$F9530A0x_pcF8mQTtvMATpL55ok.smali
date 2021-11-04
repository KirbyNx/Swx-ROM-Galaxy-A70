.class public final synthetic Lcom/android/server/pm/-$$Lambda$AppsFilter$F9530A0x_pcF8mQTtvMATpL55ok;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/pm/AppsFilter$StateProvider$CurrentStateCallback;


# instance fields
.field public final synthetic f$0:Landroid/util/ArrayMap;

.field public final synthetic f$1:[Z

.field public final synthetic f$2:Landroid/util/ArrayMap;


# direct methods
.method public synthetic constructor <init>(Landroid/util/ArrayMap;[ZLandroid/util/ArrayMap;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$AppsFilter$F9530A0x_pcF8mQTtvMATpL55ok;->f$0:Landroid/util/ArrayMap;

    iput-object p2, p0, Lcom/android/server/pm/-$$Lambda$AppsFilter$F9530A0x_pcF8mQTtvMATpL55ok;->f$1:[Z

    iput-object p3, p0, Lcom/android/server/pm/-$$Lambda$AppsFilter$F9530A0x_pcF8mQTtvMATpL55ok;->f$2:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public final currentState(Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$AppsFilter$F9530A0x_pcF8mQTtvMATpL55ok;->f$0:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/pm/-$$Lambda$AppsFilter$F9530A0x_pcF8mQTtvMATpL55ok;->f$1:[Z

    iget-object v2, p0, Lcom/android/server/pm/-$$Lambda$AppsFilter$F9530A0x_pcF8mQTtvMATpL55ok;->f$2:Landroid/util/ArrayMap;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/android/server/pm/AppsFilter;->lambda$updateEntireShouldFilterCacheAsync$5(Landroid/util/ArrayMap;[ZLandroid/util/ArrayMap;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;)V

    return-void
.end method
