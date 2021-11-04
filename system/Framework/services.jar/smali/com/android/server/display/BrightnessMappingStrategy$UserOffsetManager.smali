.class Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;
.super Ljava/lang/Object;
.source "BrightnessMappingStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/BrightnessMappingStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UserOffsetManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;
    }
.end annotation


# static fields
.field private static sDebugLogging:Z


# instance fields
.field private mCurve:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "[F[F>;"
        }
    .end annotation
.end field

.field private mLastAddedLux:F

.field private mUserPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Z)V
    .registers 3
    .param p1, "loggingEnabled"    # Z

    .line 740
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 741
    monitor-enter p0

    .line 742
    const/4 v0, 0x0

    :try_start_5
    iput-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->mCurve:Landroid/util/Pair;

    .line 743
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->mUserPoints:Ljava/util/ArrayList;

    .line 744
    monitor-exit p0

    .line 745
    return-void

    .line 744
    :catchall_10
    move-exception v0

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_10

    throw v0
.end method

.method private convertFloatArrayListToArray(Ljava/util/ArrayList;)[F
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;)[F"
        }
    .end annotation

    .line 898
    .local p1, "floatArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [F

    .line 899
    .local v0, "floatArray":[F
    const/4 v1, 0x0

    .line 900
    .local v1, "i":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    .line 901
    .local v3, "f":Ljava/lang/Float;
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "i":I
    .local v4, "i":I
    if-eqz v3, :cond_20

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v5

    goto :goto_22

    :cond_20
    const/high16 v5, 0x7fc00000    # Float.NaN

    :goto_22
    aput v5, v0, v1

    .line 902
    .end local v3    # "f":Ljava/lang/Float;
    move v1, v4

    goto :goto_b

    .line 904
    .end local v4    # "i":I
    .restart local v1    # "i":I
    :cond_26
    return-object v0
.end method

.method private formatCurve([F[F)Ljava/lang/String;
    .registers 8
    .param p1, "xs"    # [F
    .param p2, "ys"    # [F

    .line 823
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 824
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "curve: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 825
    array-length v1, p1

    array-length v2, p2

    if-gt v1, v2, :cond_10

    array-length v1, p1

    goto :goto_11

    :cond_10
    array-length v1, p2

    .line 826
    .local v1, "n":I
    :goto_11
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    if-ge v2, v1, :cond_3c

    .line 827
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, p1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, p2, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, "),"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 826
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 829
    .end local v2    # "i":I
    :cond_3c
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 830
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private removeRedundantUserPoint(Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;)V
    .registers 5
    .param p1, "newUserPoint"    # Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;

    .line 887
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->mUserPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 888
    .local v0, "iterExistingUserPoints":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;>;"
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 889
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;

    .line 891
    .local v1, "existingUserPoint":Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;
    invoke-virtual {p1, v1}, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->isInSameBoundary(Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 892
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 894
    .end local v1    # "existingUserPoint":Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;
    :cond_1b
    goto :goto_6

    .line 895
    :cond_1c
    return-void
.end method

.method public static setLoggingEnabled(Z)Z
    .registers 2
    .param p0, "loggingEnabled"    # Z

    .line 815
    sget-boolean v0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->sDebugLogging:Z

    if-ne v0, p0, :cond_6

    .line 816
    const/4 v0, 0x0

    return v0

    .line 818
    :cond_6
    sput-boolean p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->sDebugLogging:Z

    .line 819
    const/4 v0, 0x1

    return v0
.end method

.method private updateCurve()V
    .registers 11

    .line 834
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 835
    .local v0, "sortedUserPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;>;"
    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->mUserPoints:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 836
    invoke-static {}, Ljava/util/Comparator;->naturalOrder()Ljava/util/Comparator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 838
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 839
    .local v1, "alOffsetLux":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 841
    .local v2, "alOffsetBrightness":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 842
    .local v3, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_20
    if-ge v4, v3, :cond_8c

    .line 843
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;

    .line 846
    .local v5, "currUserPoint":Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;
    const/4 v6, 0x1

    .line 847
    .local v6, "needToAdd":Z
    if-lez v4, :cond_3c

    .line 848
    add-int/lit8 v7, v4, -0x1

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;

    .line 849
    .local v7, "prevUserPoint":Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;
    iget v8, v5, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->mLowerBoundary:F

    invoke-virtual {v7, v8}, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->isInSameBoundary(F)Z

    move-result v8

    if-eqz v8, :cond_3c

    .line 850
    const/4 v6, 0x0

    .line 853
    .end local v7    # "prevUserPoint":Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;
    :cond_3c
    const/4 v7, 0x0

    if-eqz v6, :cond_4f

    .line 854
    iget v8, v5, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->mLowerBoundary:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 855
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 859
    :cond_4f
    iget v8, v5, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->mLux:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 860
    iget v8, v5, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->mBrightnessOffset:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 863
    const/4 v6, 0x1

    .line 864
    add-int/lit8 v8, v3, -0x1

    if-ge v4, v8, :cond_77

    .line 865
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;

    .line 866
    .local v8, "nextUserPoint":Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;
    iget v9, v5, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->mUpperBoundary:F

    invoke-virtual {v8, v9}, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->isInSameBoundary(F)Z

    move-result v9

    if-eqz v9, :cond_77

    .line 867
    const/4 v6, 0x0

    .line 870
    .end local v8    # "nextUserPoint":Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;
    :cond_77
    if-eqz v6, :cond_89

    .line 871
    iget v8, v5, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->mUpperBoundary:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 872
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 842
    .end local v5    # "currUserPoint":Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;
    .end local v6    # "needToAdd":Z
    :cond_89
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    .line 876
    .end local v4    # "i":I
    :cond_8c
    invoke-direct {p0, v1}, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->convertFloatArrayListToArray(Ljava/util/ArrayList;)[F

    move-result-object v4

    .line 877
    .local v4, "arrayOffsetLux":[F
    invoke-direct {p0, v2}, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->convertFloatArrayListToArray(Ljava/util/ArrayList;)[F

    move-result-object v5

    .line 879
    .local v5, "arrayOffsetBrightness":[F
    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->mCurve:Landroid/util/Pair;

    .line 881
    sget-boolean v6, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->sDebugLogging:Z

    if-eqz v6, :cond_a8

    .line 882
    # getter for: Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->access$100()Lcom/android/server/display/utils/Plog;

    move-result-object v6

    const-string/jumbo v7, "offset curve"

    invoke-virtual {v6, v7, v4, v5}, Lcom/android/server/display/utils/Plog;->logCurve(Ljava/lang/String;[F[F)Lcom/android/server/display/utils/Plog;

    .line 884
    :cond_a8
    return-void
.end method


# virtual methods
.method public addPoint(FFF)V
    .registers 10
    .param p1, "lux"    # F
    .param p2, "desiredBrightness"    # F
    .param p3, "currentBrightness"    # F

    .line 748
    monitor-enter p0

    .line 749
    :try_start_1
    new-instance v0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;-><init>(FFF)V

    .line 750
    .local v0, "newUserPoint":Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;
    invoke-direct {p0, v0}, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->removeRedundantUserPoint(Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;)V

    .line 751
    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->mUserPoints:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 752
    iput p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->mLastAddedLux:F

    .line 754
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    iget-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->mUserPoints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_58

    .line 755
    const-string v2, "BrightnessMappingStrategy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addUserDataPoint: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->mUserPoints:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    const/16 v2, 0xb

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    iget-object v4, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->mUserPoints:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/android/server/power/PowerManagerLog;->sendLogEvent(I[Ljava/lang/Object;)V

    .line 754
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 759
    .end local v1    # "i":I
    :cond_58
    invoke-direct {p0}, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->updateCurve()V

    .line 760
    .end local v0    # "newUserPoint":Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;
    monitor-exit p0

    .line 761
    return-void

    .line 760
    :catchall_5d
    move-exception v0

    monitor-exit p0
    :try_end_5f
    .catchall {:try_start_1 .. :try_end_5f} :catchall_5d

    throw v0
.end method

.method public clear()V
    .registers 5

    .line 764
    monitor-enter p0

    .line 765
    :try_start_1
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->mCurve:Landroid/util/Pair;

    if-eqz v0, :cond_21

    .line 766
    # getter for: Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->access$100()Lcom/android/server/display/utils/Plog;

    move-result-object v0

    const-string v1, "clear user offset curve"

    invoke-virtual {v0, v1}, Lcom/android/server/display/utils/Plog;->start(Ljava/lang/String;)Lcom/android/server/display/utils/Plog;

    move-result-object v0

    const-string/jumbo v1, "offset curve"

    iget-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->mCurve:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, [F

    iget-object v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->mCurve:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, [F

    .line 767
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/display/utils/Plog;->logCurve(Ljava/lang/String;[F[F)Lcom/android/server/display/utils/Plog;

    .line 770
    :cond_21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->mCurve:Landroid/util/Pair;

    .line 771
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->mUserPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 772
    monitor-exit p0

    .line 773
    return-void

    .line 772
    :catchall_2b
    move-exception v0

    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_2b

    throw v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 800
    const-string v0, "UserOffsetManager:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 802
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->mCurve:Landroid/util/Pair;

    if-eqz v0, :cond_2d

    .line 803
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->mCurve:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, [F

    iget-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->mCurve:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [F

    invoke-direct {p0, v1, v2}, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->formatCurve([F[F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 806
    :cond_2d
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2e
    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->mUserPoints:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5b

    .line 807
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mUserPoints["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->mUserPoints:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 806
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    .line 810
    .end local v0    # "i":I
    :cond_5b
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 811
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  sDebugLogging: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->sDebugLogging:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 812
    return-void
.end method

.method public getCurve()Landroid/util/Pair;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "[F[F>;"
        }
    .end annotation

    .line 776
    monitor-enter p0

    .line 777
    const/4 v0, 0x0

    .line 778
    .local v0, "copyOfCurve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    :try_start_2
    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->mCurve:Landroid/util/Pair;

    if-eqz v1, :cond_2d

    .line 779
    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->mCurve:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, [F

    iget-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->mCurve:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, [F

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->mCurve:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [F

    iget-object v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->mCurve:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, [F

    array-length v3, v3

    .line 780
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    .line 779
    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    move-object v0, v1

    .line 783
    :cond_2d
    monitor-exit p0

    return-object v0

    .line 784
    .end local v0    # "copyOfCurve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    :catchall_2f
    move-exception v0

    monitor-exit p0
    :try_end_31
    .catchall {:try_start_2 .. :try_end_31} :catchall_2f

    throw v0
.end method

.method public getLastAddedLux()F
    .registers 2

    .line 794
    monitor-enter p0

    .line 795
    :try_start_1
    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->mLastAddedLux:F

    monitor-exit p0

    return v0

    .line 796
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public hasUserDataPoints()Z
    .registers 2

    .line 788
    monitor-enter p0

    .line 789
    :try_start_1
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->mUserPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    monitor-exit p0

    return v0

    .line 790
    :catchall_e
    move-exception v0

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_e

    throw v0
.end method
