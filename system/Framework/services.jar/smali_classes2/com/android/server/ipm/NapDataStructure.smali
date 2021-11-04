.class public Lcom/android/server/ipm/NapDataStructure;
.super Ljava/lang/Object;
.source "NapDataStructure.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final PREVIOUS_PKG:I = 0x1

.field public static final RUNNING_PKG:I = 0x2

.field private static final serialVersionUID:J = 0x23d71a156ec92c6cL


# instance fields
.field private mModelPkgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ipm/NapDataStructure;->mModelPkgs:Ljava/util/ArrayList;

    .line 17
    return-void
.end method


# virtual methods
.method protected Nominal2String(II)Ljava/lang/String;
    .registers 6
    .param p1, "no"    # I
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/android/server/ipm/NapDataStructure;->mModelPkgs:Ljava/util/ArrayList;

    monitor-enter v0

    .line 32
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ipm/NapDataStructure;->mModelPkgs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_15

    .line 33
    iget-object v1, p0, Lcom/android/server/ipm/NapDataStructure;->mModelPkgs:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 35
    :cond_15
    new-instance v1, Ljava/lang/Exception;

    const-string/jumbo v2, "unknown name"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/ipm/NapDataStructure;
    .end local p1    # "no":I
    .end local p2    # "type":I
    throw v1

    .line 36
    .restart local p0    # "this":Lcom/android/server/ipm/NapDataStructure;
    .restart local p1    # "no":I
    .restart local p2    # "type":I
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method protected String2Nominal(ILjava/lang/String;I)I
    .registers 6
    .param p1, "userId"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # I

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_&_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 21
    iget-object v0, p0, Lcom/android/server/ipm/NapDataStructure;->mModelPkgs:Ljava/util/ArrayList;

    monitor-enter v0

    .line 22
    :try_start_17
    iget-object v1, p0, Lcom/android/server/ipm/NapDataStructure;->mModelPkgs:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 23
    iget-object v1, p0, Lcom/android/server/ipm/NapDataStructure;->mModelPkgs:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    :cond_24
    iget-object v1, p0, Lcom/android/server/ipm/NapDataStructure;->mModelPkgs:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    monitor-exit v0

    return v1

    .line 26
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_17 .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method protected checkUninstalled(ILjava/lang/String;)Z
    .registers 4
    .param p1, "userId"    # I
    .param p2, "pkg"    # Ljava/lang/String;

    .line 40
    invoke-static {}, Lcom/android/server/ipm/MultiUserPkgManager;->getInstanse()Lcom/android/server/ipm/MultiUserPkgManager;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/android/server/ipm/MultiUserPkgManager;->checkInstalledAppByName(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 41
    const/4 v0, 0x0

    return v0

    .line 43
    :cond_c
    const/4 v0, 0x1

    return v0
.end method

.method protected dump()Ljava/lang/String;
    .registers 8

    .line 53
    const/4 v0, 0x0

    .line 54
    .local v0, "i":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "\t model pkgs: \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    iget-object v2, p0, Lcom/android/server/ipm/NapDataStructure;->mModelPkgs:Ljava/util/ArrayList;

    monitor-enter v2

    .line 58
    :try_start_e
    iget-object v3, p0, Lcom/android/server/ipm/NapDataStructure;->mModelPkgs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_45

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 59
    .local v4, "s":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\t\t("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    nop

    .end local v4    # "s":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    .line 61
    goto :goto_14

    .line 62
    :cond_45
    monitor-exit v2
    :try_end_46
    .catchall {:try_start_e .. :try_end_46} :catchall_50

    .line 63
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 62
    :catchall_50
    move-exception v3

    :try_start_51
    monitor-exit v2
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    throw v3
.end method

.method protected getClassValsNum()I
    .registers 3

    .line 47
    iget-object v0, p0, Lcom/android/server/ipm/NapDataStructure;->mModelPkgs:Ljava/util/ArrayList;

    monitor-enter v0

    .line 48
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ipm/NapDataStructure;->mModelPkgs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    monitor-exit v0

    return v1

    .line 49
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method
