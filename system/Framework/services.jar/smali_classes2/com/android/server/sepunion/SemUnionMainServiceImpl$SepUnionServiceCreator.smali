.class Lcom/android/server/sepunion/SemUnionMainServiceImpl$SepUnionServiceCreator;
.super Ljava/lang/Object;
.source "SemUnionMainServiceImpl.java"

# interfaces
.implements Landroid/os/IServiceCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/SemUnionMainServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SepUnionServiceCreator"
.end annotation


# instance fields
.field private final mName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/sepunion/SemUnionMainServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/SemUnionMainServiceImpl;Ljava/lang/String;)V
    .registers 3
    .param p2, "serviceName"    # Ljava/lang/String;

    .line 285
    iput-object p1, p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl$SepUnionServiceCreator;->this$0:Lcom/android/server/sepunion/SemUnionMainServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    iput-object p2, p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl$SepUnionServiceCreator;->mName:Ljava/lang/String;

    .line 287
    return-void
.end method


# virtual methods
.method public createService(Landroid/content/Context;)Landroid/os/IBinder;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 291
    iget-object v0, p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl$SepUnionServiceCreator;->this$0:Lcom/android/server/sepunion/SemUnionMainServiceImpl;

    iget-object v1, p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl$SepUnionServiceCreator;->mName:Ljava/lang/String;

    # invokes: Lcom/android/server/sepunion/SemUnionMainServiceImpl;->addSepUnionServiceMapInternal(Ljava/lang/String;Landroid/content/Context;)V
    invoke-static {v0, v1, p1}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->access$400(Lcom/android/server/sepunion/SemUnionMainServiceImpl;Ljava/lang/String;Landroid/content/Context;)V

    .line 292
    # getter for: Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sUnionIbinderMap:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->access$500()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl$SepUnionServiceCreator;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    return-object v0
.end method
