.class public Lcom/android/server/ibs/dnba/NetSpeedPolicy$JitterProtect;
.super Ljava/lang/Object;
.source "NetSpeedPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ibs/dnba/NetSpeedPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "JitterProtect"
.end annotation


# instance fields
.field private mJitters:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/ibs/dnba/NetSpeedPolicy$Jitter;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/ibs/dnba/NetSpeedPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/ibs/dnba/NetSpeedPolicy;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    .line 880
    iput-object p1, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$JitterProtect;->this$0:Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 881
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$JitterProtect;->mJitters:Landroid/util/ArrayMap;

    .line 882
    return-void
.end method


# virtual methods
.method public prepare(Ljava/lang/String;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;

    .line 885
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$JitterProtect;->mJitters:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$Jitter;

    .line 886
    .local v0, "j":Lcom/android/server/ibs/dnba/NetSpeedPolicy$Jitter;
    if-eqz v0, :cond_11

    .line 887
    iget v1, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$Jitter;->mCount1:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$Jitter;->mCount1:I

    goto :goto_1d

    .line 889
    :cond_11
    iget-object v1, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$JitterProtect;->mJitters:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/server/ibs/dnba/NetSpeedPolicy$Jitter;

    iget-object v3, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$JitterProtect;->this$0:Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    invoke-direct {v2, v3}, Lcom/android/server/ibs/dnba/NetSpeedPolicy$Jitter;-><init>(Lcom/android/server/ibs/dnba/NetSpeedPolicy;)V

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 891
    :goto_1d
    return-void
.end method

.method public trigger(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "times"    # I

    .line 894
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$JitterProtect;->mJitters:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$Jitter;

    .line 895
    .local v0, "j":Lcom/android/server/ibs/dnba/NetSpeedPolicy$Jitter;
    const/4 v1, 0x0

    if-eqz v0, :cond_25

    .line 896
    iget v2, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$Jitter;->mCount2:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$Jitter;->mCount2:I

    .line 897
    iget v2, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$Jitter;->mCount1:I

    iget v4, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$Jitter;->mCount2:I

    if-eq v2, v4, :cond_1c

    .line 898
    iput v3, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$Jitter;->mCount2:I

    iput v3, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$Jitter;->mCount1:I

    goto :goto_25

    .line 899
    :cond_1c
    iget v2, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$Jitter;->mCount2:I

    if-lt v2, p2, :cond_25

    .line 900
    iput v1, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$Jitter;->mCount2:I

    iput v1, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$Jitter;->mCount1:I

    .line 901
    return v3

    .line 904
    :cond_25
    :goto_25
    return v1
.end method
