.class Lcom/android/server/ipm/NapPredictor$PkgComparator;
.super Ljava/lang/Object;
.source "NapPredictor.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ipm/NapPredictor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PkgComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private hitRatioMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/ipm/NapPredictor;


# direct methods
.method public constructor <init>(Lcom/android/server/ipm/NapPredictor;Ljava/util/HashMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .line 75
    .local p2, "hitRatioMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Double;>;"
    iput-object p1, p0, Lcom/android/server/ipm/NapPredictor$PkgComparator;->this$0:Lcom/android/server/ipm/NapPredictor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/ipm/NapPredictor$PkgComparator;->hitRatioMap:Ljava/util/HashMap;

    .line 76
    iput-object p2, p0, Lcom/android/server/ipm/NapPredictor$PkgComparator;->hitRatioMap:Ljava/util/HashMap;

    .line 77
    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 73
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/ipm/NapPredictor$PkgComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .registers 8
    .param p1, "pkg1"    # Ljava/lang/String;
    .param p2, "pkg2"    # Ljava/lang/String;

    .line 80
    iget-object v0, p0, Lcom/android/server/ipm/NapPredictor$PkgComparator;->hitRatioMap:Ljava/util/HashMap;

    if-nez v0, :cond_6

    .line 81
    const/4 v0, 0x0

    return v0

    .line 83
    :cond_6
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 84
    .local v0, "r1":Ljava/lang/Double;
    const-wide/16 v1, 0x0

    if-nez v0, :cond_12

    move-wide v3, v1

    goto :goto_16

    :cond_12
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    :goto_16
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 85
    iget-object v3, p0, Lcom/android/server/ipm/NapPredictor$PkgComparator;->hitRatioMap:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    .line 86
    .local v3, "r2":Ljava/lang/Double;
    if-nez v3, :cond_25

    goto :goto_29

    :cond_25
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    :goto_29
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 88
    .end local v3    # "r2":Ljava/lang/Double;
    .local v1, "r2":Ljava/lang/Double;
    invoke-virtual {v1, v0}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v2

    return v2
.end method
