.class public Lcom/android/server/asks/RuleUpdateForSecurity;
.super Ljava/lang/Object;
.source "RuleUpdateForSecurity.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private device_basePath:Ljava/lang/String;

.field private device_policyCopyPath:Ljava/lang/String;

.field private device_policyUnzipPath:Ljava/lang/String;

.field mContainer:Lcom/android/server/asks/RUFSContainer;

.field private mVersionFromDevice:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/asks/RUFSContainer;)V
    .registers 4
    .param p1, "_container"    # Lcom/android/server/asks/RUFSContainer;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->mContainer:Lcom/android/server/asks/RUFSContainer;

    .line 38
    const-string v0, "AASA_RuleUpdateForSecurity_RUFS"

    iput-object v0, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->TAG:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->mVersionFromDevice:Ljava/lang/String;

    .line 41
    const-string v1, "/data/system/.aasa"

    iput-object v1, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->device_basePath:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->device_policyCopyPath:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->device_policyUnzipPath:Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->mContainer:Lcom/android/server/asks/RUFSContainer;

    return-void
.end method

.method private applypolicys(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12
    .param p1, "previousPolicyFolder"    # Ljava/lang/String;
    .param p2, "newPolicyFolder"    # Ljava/lang/String;

    .line 248
    const/4 v0, 0x0

    .line 250
    .local v0, "status":I
    iget-object v1, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->mContainer:Lcom/android/server/asks/RUFSContainer;

    if-eqz v1, :cond_25

    .line 251
    invoke-virtual {v1}, Lcom/android/server/asks/RUFSContainer;->getADPModels()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->mContainer:Lcom/android/server/asks/RUFSContainer;

    invoke-virtual {v2}, Lcom/android/server/asks/RUFSContainer;->getADPCarriers()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ADP.xml"

    invoke-direct {p0, p2, v3, v1, v2}, Lcom/android/server/asks/RuleUpdateForSecurity;->checkTargetAndRemoveIfNot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iget-object v1, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->mContainer:Lcom/android/server/asks/RUFSContainer;

    invoke-virtual {v1}, Lcom/android/server/asks/RUFSContainer;->getASKSRNEWModels()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->mContainer:Lcom/android/server/asks/RUFSContainer;

    invoke-virtual {v2}, Lcom/android/server/asks/RUFSContainer;->getASKSRNEWCarriers()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ASKSRNEW.xml"

    invoke-direct {p0, p2, v3, v1, v2}, Lcom/android/server/asks/RuleUpdateForSecurity;->checkTargetAndRemoveIfNot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    :cond_25
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->device_basePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "AASApolicy"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 260
    .local v1, "aasaPolicy":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 261
    .local v2, "aasaPolicyList":[Ljava/io/File;
    if-eqz v2, :cond_7e

    .line 262
    const/4 v4, 0x0

    .local v4, "ii":I
    :goto_49
    array-length v5, v2

    if-ge v4, v5, :cond_7e

    .line 263
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v2, v4

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 264
    .local v5, "isExistingPolicy":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_7b

    .line 266
    aget-object v6, v2, v4

    invoke-direct {p0, v6, v5}, Lcom/android/server/asks/RuleUpdateForSecurity;->copyFileUsingStream(Ljava/io/File;Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_7b

    .line 267
    const/4 v0, 0x1

    .line 268
    goto :goto_7e

    .line 262
    .end local v5    # "isExistingPolicy":Ljava/io/File;
    :cond_7b
    add-int/lit8 v4, v4, 0x1

    goto :goto_49

    .line 273
    .end local v4    # "ii":I
    :cond_7e
    :goto_7e
    const/4 v4, 0x1

    if-eq v0, v4, :cond_10a

    .line 274
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_f2

    .line 275
    const/4 v0, 0x2

    .line 276
    iget-object v4, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " AASApolicy folder is changed into old version: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->mVersionFromDevice:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 279
    .local v4, "newPolicy":Ljava/io/File;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 280
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->device_basePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_ea

    .line 281
    iget-object v5, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->TAG:Ljava/lang/String;

    const-string v6, " new policy folder is changed into AASApolicy"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const/4 v0, 0x3

    goto :goto_f1

    .line 285
    :cond_ea
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "Fail changeD"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 287
    .end local v4    # "newPolicy":Ljava/io/File;
    :goto_f1
    goto :goto_10a

    .line 289
    :cond_f2
    iget-object v4, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Fail changed into "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->mVersionFromDevice:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_10a
    :goto_10a
    const/4 v4, 0x1

    .line 294
    .local v4, "ret":Z
    const/4 v5, 0x2

    if-eq v0, v5, :cond_112

    const/4 v3, 0x3

    if-eq v0, v3, :cond_137

    goto :goto_136

    .line 299
    :cond_112
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 300
    .local v5, "mustChange":Ljava/io/File;
    nop

    .line 301
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->device_basePath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 305
    .end local v5    # "mustChange":Ljava/io/File;
    :goto_136
    const/4 v4, 0x0

    .line 308
    :cond_137
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/android/server/asks/RuleUpdateForSecurity;->deleteDir(Ljava/io/File;)V

    .line 309
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/android/server/asks/RuleUpdateForSecurity;->deleteDir(Ljava/io/File;)V

    .line 310
    new-instance v3, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->device_policyCopyPath:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/android/server/asks/RuleUpdateForSecurity;->deleteDir(Ljava/io/File;)V

    .line 314
    return v4
.end method

.method private checkTargetAndRemoveIfNot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .param p1, "targetDir"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "models"    # Ljava/lang/String;
    .param p4, "carriers"    # Ljava/lang/String;

    .line 213
    if-eqz p3, :cond_76

    if-eqz p4, :cond_76

    .line 215
    const-string v0, ","

    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 216
    .local v1, "modellist":[Ljava/lang/String;
    invoke-virtual {p4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "carrierlist":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 219
    .local v2, "targetModel":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 221
    .local v3, "targetCarrier":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_24

    .line 222
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v4

    .line 223
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_19
    array-length v5, v1

    if-ge v4, v5, :cond_24

    .line 224
    aget-object v5, v1, v4

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 228
    .end local v4    # "i":I
    :cond_24
    if-eqz v0, :cond_38

    .line 229
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v4

    .line 230
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2d
    array-length v5, v0

    if-ge v4, v5, :cond_38

    .line 231
    aget-object v5, v0, v4

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    add-int/lit8 v4, v4, 0x1

    goto :goto_2d

    .line 235
    .end local v4    # "i":I
    :cond_38
    invoke-direct {p0, v2, v3}, Lcom/android/server/asks/RuleUpdateForSecurity;->checkTargetModelAndCarrier(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v4

    if-nez v4, :cond_76

    .line 237
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 238
    .local v4, "policyFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_76

    .line 239
    iget-object v5, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is not target here"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 244
    .end local v0    # "carrierlist":[Ljava/lang/String;
    .end local v1    # "modellist":[Ljava/lang/String;
    .end local v2    # "targetModel":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "targetCarrier":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "policyFile":Ljava/io/File;
    :cond_76
    return-void
.end method

.method private checkTargetModelAndCarrier(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 189
    .local p1, "ruleModel":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "ruleCarrier":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "targetModel":Ljava/lang/String;
    const-string/jumbo v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 192
    .local v1, "targetCarrier":Ljava/lang/String;
    const/4 v2, 0x0

    .line 194
    .local v2, "result":Z
    const-string v3, "ALL"

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_32

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v5, :cond_32

    .line 195
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v3, v5, :cond_30

    .line 196
    :cond_2a
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 197
    :cond_30
    const/4 v2, 0x1

    goto :goto_4b

    .line 199
    :cond_32
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 200
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v3, v5, :cond_4a

    .line 201
    :cond_44
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 202
    :cond_4a
    const/4 v2, 0x1

    .line 206
    :cond_4b
    :goto_4b
    iget-object v3, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkTargetModelAndCarrier() : result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    return v2
.end method

.method private compSizeofUncompressFiles(Ljava/lang/String;)Z
    .registers 10
    .param p1, "folderPath"    # Ljava/lang/String;

    .line 507
    const/4 v0, 0x0

    .line 509
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->mContainer:Lcom/android/server/asks/RUFSContainer;

    if-eqz v1, :cond_36

    .line 512
    :try_start_5
    invoke-virtual {v1}, Lcom/android/server/asks/RUFSContainer;->getSizeofFiles()J

    move-result-wide v1

    .line 513
    .local v1, "compfromToken":J
    invoke-direct {p0, p1}, Lcom/android/server/asks/RuleUpdateForSecurity;->getSizeofFiles(Ljava/lang/String;)J

    move-result-wide v3

    .line 514
    .local v3, "compfromFiles":J
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Long;->compare(JJ)I

    move-result v5

    if-nez v5, :cond_15

    .line 516
    const/4 v0, 0x1

    goto :goto_34

    .line 519
    :cond_15
    iget-object v5, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "size of all files   token:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " device:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_34} :catch_35

    .line 523
    .end local v1    # "compfromToken":J
    .end local v3    # "compfromFiles":J
    :goto_34
    goto :goto_36

    .line 521
    :catch_35
    move-exception v1

    .line 525
    :cond_36
    :goto_36
    return v0
.end method

.method private convertToHex([B)Ljava/lang/String;
    .registers 10
    .param p1, "data"    # [B

    .line 490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 491
    .local v0, "buf":Ljava/lang/StringBuilder;
    array-length v1, p1

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_2d

    aget-byte v3, p1, v2

    .line 493
    .local v3, "b":B
    ushr-int/lit8 v4, v3, 0x4

    and-int/lit8 v4, v4, 0xf

    .line 494
    .local v4, "halfbyte":I
    const/4 v5, 0x0

    .line 497
    .local v5, "two_halfs":I
    :goto_10
    if-ltz v4, :cond_19

    const/16 v6, 0x9

    if-gt v4, v6, :cond_19

    add-int/lit8 v6, v4, 0x30

    goto :goto_1d

    :cond_19
    add-int/lit8 v6, v4, -0xa

    add-int/lit8 v6, v6, 0x61

    :goto_1d
    int-to-char v6, v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 498
    and-int/lit8 v4, v3, 0xf

    .line 500
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "two_halfs":I
    .local v6, "two_halfs":I
    const/4 v7, 0x1

    if-lt v5, v7, :cond_2b

    .line 491
    .end local v3    # "b":B
    .end local v4    # "halfbyte":I
    .end local v6    # "two_halfs":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 500
    .restart local v3    # "b":B
    .restart local v4    # "halfbyte":I
    .restart local v6    # "two_halfs":I
    :cond_2b
    move v5, v6

    goto :goto_10

    .line 502
    .end local v3    # "b":B
    .end local v4    # "halfbyte":I
    .end local v6    # "two_halfs":I
    :cond_2d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private copyFileUsingStream(Ljava/io/File;Ljava/io/File;)Z
    .registers 11
    .param p1, "source"    # Ljava/io/File;
    .param p2, "dest"    # Ljava/io/File;

    .line 152
    const-string v0, ""

    const/4 v1, 0x1

    .line 153
    .local v1, "isOk":Z
    const/4 v2, 0x0

    .line 154
    .local v2, "is":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 156
    .local v3, "os":Ljava/io/OutputStream;
    :try_start_5
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v4

    .line 157
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v3, v4

    .line 158
    const/16 v4, 0x1000

    new-array v4, v4, [B

    .line 160
    .local v4, "buffer":[B
    :goto_15
    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    move v6, v5

    .local v6, "length":I
    if-lez v5, :cond_21

    .line 161
    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Ljava/io/OutputStream;->write([BII)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_20} :catch_60
    .catchall {:try_start_5 .. :try_end_20} :catchall_35

    goto :goto_15

    .line 170
    .end local v4    # "buffer":[B
    .end local v6    # "length":I
    :cond_21
    nop

    .line 171
    :try_start_22
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 172
    const/4 v2, 0x0

    .line 174
    nop

    .line 175
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_2a} :catch_2c

    .line 176
    const/4 v3, 0x0

    goto :goto_8b

    .line 178
    :catch_2c
    move-exception v4

    .line 180
    .local v4, "e":Ljava/io/IOException;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_7a

    .line 169
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_35
    move-exception v4

    .line 170
    if-eqz v2, :cond_3f

    .line 171
    :try_start_38
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 172
    const/4 v2, 0x0

    goto :goto_3f

    .line 178
    :catch_3d
    move-exception v5

    goto :goto_46

    .line 174
    :cond_3f
    :goto_3f
    if-eqz v3, :cond_5e

    .line 175
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_44} :catch_3d

    .line 176
    const/4 v3, 0x0

    goto :goto_5e

    .line 180
    .local v5, "e":Ljava/io/IOException;
    :goto_46
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5f

    .line 182
    .end local v5    # "e":Ljava/io/IOException;
    :cond_5e
    :goto_5e
    nop

    .line 183
    :goto_5f
    throw v4

    .line 163
    :catch_60
    move-exception v4

    .line 165
    .restart local v4    # "e":Ljava/io/IOException;
    const/4 v1, 0x0

    .line 170
    .end local v4    # "e":Ljava/io/IOException;
    if-eqz v2, :cond_6b

    .line 171
    :try_start_64
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 172
    const/4 v2, 0x0

    goto :goto_6b

    .line 178
    :catch_69
    move-exception v4

    goto :goto_73

    .line 174
    :cond_6b
    :goto_6b
    if-eqz v3, :cond_8b

    .line 175
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_70} :catch_69

    .line 176
    const/4 v0, 0x0

    move-object v3, v0

    .end local v3    # "os":Ljava/io/OutputStream;
    .local v0, "os":Ljava/io/OutputStream;
    goto :goto_8b

    .line 180
    .end local v0    # "os":Ljava/io/OutputStream;
    .restart local v3    # "os":Ljava/io/OutputStream;
    .restart local v4    # "e":Ljava/io/IOException;
    :goto_73
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    :goto_7a
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 183
    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_8c

    .line 182
    :cond_8b
    :goto_8b
    nop

    .line 184
    :goto_8c
    return v1
.end method

.method private deleteDir(Ljava/io/File;)V
    .registers 6
    .param p1, "file"    # Ljava/io/File;

    .line 318
    if-eqz p1, :cond_1d

    .line 319
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 320
    .local v0, "contents":[Ljava/io/File;
    if-eqz v0, :cond_14

    .line 321
    array-length v1, v0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    .line 322
    .local v3, "f":Ljava/io/File;
    invoke-direct {p0, v3}, Lcom/android/server/asks/RuleUpdateForSecurity;->deleteDir(Ljava/io/File;)V

    .line 321
    .end local v3    # "f":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 325
    :cond_14
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 326
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 328
    .end local v0    # "contents":[Ljava/io/File;
    :cond_1d
    return-void
.end method

.method private descramble([BLjava/lang/String;)[B
    .registers 7
    .param p1, "original"    # [B
    .param p2, "key"    # Ljava/lang/String;

    .line 331
    array-length v0, p1

    new-array v0, v0, [B

    .line 333
    .local v0, "buf":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, p1

    if-ge v1, v2, :cond_20

    .line 334
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    rem-int v2, v1, v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 335
    .local v2, "c":I
    rem-int/lit8 v3, v2, 0x2

    add-int/lit8 v3, v3, 0x1

    .line 336
    .end local v2    # "c":I
    .local v3, "c":I
    aget-byte v2, p1, v1

    invoke-direct {p0, v2, v3}, Lcom/android/server/asks/RuleUpdateForSecurity;->inverseEachBit(BI)B

    move-result v2

    aput-byte v2, v0, v1

    .line 333
    .end local v3    # "c":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 338
    .end local v1    # "i":I
    :cond_20
    return-object v0
.end method

.method private digest(Landroid/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;)Ljava/lang/String;
    .registers 12
    .param p1, "jarFile"    # Landroid/util/jar/StrictJarFile;
    .param p2, "zipEntry"    # Ljava/util/zip/ZipEntry;

    .line 386
    const/4 v0, 0x0

    .line 387
    .local v0, "value":Ljava/lang/String;
    const/4 v1, 0x0

    .line 389
    .local v1, "md":Ljava/security/MessageDigest;
    :try_start_2
    const-string v2, "SHA-1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2
    :try_end_8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_8} :catch_a

    move-object v1, v2

    .line 392
    goto :goto_e

    .line 390
    :catch_a
    move-exception v2

    .line 391
    .local v2, "e1":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 394
    .end local v2    # "e1":Ljava/security/NoSuchAlgorithmException;
    :goto_e
    const/4 v2, 0x0

    .line 396
    .local v2, "is":Ljava/io/InputStream;
    if-nez p2, :cond_13

    const/4 v3, 0x0

    return-object v3

    .line 398
    :cond_13
    :try_start_13
    invoke-virtual {p1, p2}, Landroid/util/jar/StrictJarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    move-object v2, v3

    .line 399
    const/4 v3, 0x0

    .line 400
    .local v3, "size":I
    const/16 v4, 0x1000

    new-array v5, v4, [B

    .line 401
    .local v5, "localBuf":[B
    if-eqz v2, :cond_75

    .line 402
    :goto_1f
    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    move v3, v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2c

    .line 403
    invoke-virtual {v1, v5, v6, v3}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_1f

    .line 405
    :cond_2c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_2f} :catch_53
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_2f} :catch_30

    goto :goto_75

    .line 416
    .end local v3    # "size":I
    .end local v5    # "localBuf":[B
    :catch_30
    move-exception v3

    .line 417
    .local v3, "e":Ljava/lang/RuntimeException;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " + No RUN "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 418
    if-eqz v2, :cond_76

    .line 420
    :try_start_4d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_51

    .line 422
    goto :goto_76

    .line 421
    :catch_51
    move-exception v4

    goto :goto_76

    .line 407
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :catch_53
    move-exception v3

    .line 408
    .local v3, "e":Ljava/io/IOException;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " + No IO "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 409
    if-eqz v2, :cond_75

    .line 411
    :try_start_70
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_74

    .line 413
    goto :goto_75

    .line 412
    :catch_74
    move-exception v4

    .line 424
    .end local v3    # "e":Ljava/io/IOException;
    :cond_75
    :goto_75
    nop

    .line 426
    :cond_76
    :goto_76
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/asks/RuleUpdateForSecurity;->convertToHex([B)Ljava/lang/String;

    move-result-object v0

    .line 427
    return-object v0
.end method

.method private enforcePermissionCheckForASKS()Z
    .registers 3

    .line 552
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private getSizeofFiles(Ljava/lang/String;)J
    .registers 9
    .param p1, "folderPath"    # Ljava/lang/String;

    .line 530
    const-wide/16 v0, 0x0

    .line 532
    .local v0, "size":J
    :try_start_2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 533
    .local v2, "folder":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 535
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 536
    .local v3, "list":[Ljava/io/File;
    const/4 v4, 0x0

    .local v4, "ii":I
    :goto_12
    array-length v5, v3

    if-ge v4, v5, :cond_1f

    .line 539
    aget-object v5, v3, v4

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1b} :catch_20

    add-long/2addr v0, v5

    .line 536
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 546
    .end local v2    # "folder":Ljava/io/File;
    .end local v3    # "list":[Ljava/io/File;
    .end local v4    # "ii":I
    :cond_1f
    goto :goto_39

    .line 543
    :catch_20
    move-exception v2

    .line 544
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 545
    const-wide/16 v0, 0x0

    .line 547
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_39
    return-wide v0
.end method

.method private inverseEachBit(BI)B
    .registers 5
    .param p1, "current"    # B
    .param p2, "index"    # I

    .line 343
    shr-int v0, p1, p2

    const/4 v1, 0x1

    and-int/2addr v0, v1

    int-to-byte v0, v0

    .line 344
    .local v0, "temppbit":B
    shl-int/2addr v1, p2

    if-nez v0, :cond_a

    or-int/2addr v1, p1

    goto :goto_c

    :cond_a
    not-int v1, v1

    and-int/2addr v1, p1

    :goto_c
    int-to-byte v1, v1

    move p1, v1

    return v1
.end method

.method private readFile(Landroid/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;)[B
    .registers 10
    .param p1, "mTokenFile"    # Landroid/util/jar/StrictJarFile;
    .param p2, "zipEntry"    # Ljava/util/zip/ZipEntry;

    .line 360
    const/high16 v0, 0x100000

    .line 361
    .local v0, "MAX_BUF_BYTE":I
    const/4 v1, 0x0

    .line 362
    .local v1, "in":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 363
    .local v2, "bis":Ljava/io/BufferedInputStream;
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 364
    .local v3, "arrayBuff":Ljava/io/ByteArrayOutputStream;
    new-array v4, v0, [B

    .line 367
    .local v4, "buffer":[B
    :try_start_b
    invoke-virtual {p1, p2}, Landroid/util/jar/StrictJarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v5

    move-object v1, v5

    .line 368
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-direct {v5, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, v5

    .line 369
    const/4 v5, 0x0

    .line 370
    .local v5, "len":I
    :goto_17
    invoke-virtual {v2, v4}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v6

    move v5, v6

    if-ltz v6, :cond_23

    .line 371
    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_22} :catch_36
    .catchall {:try_start_b .. :try_end_22} :catchall_2c

    goto :goto_17

    .line 376
    .end local v5    # "len":I
    :cond_23
    :try_start_23
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 377
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_29} :catch_2a

    .line 379
    :goto_29
    goto :goto_3e

    .line 378
    :catch_2a
    move-exception v5

    .line 380
    goto :goto_3e

    .line 375
    :catchall_2c
    move-exception v5

    .line 376
    :try_start_2d
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 377
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_33} :catch_34

    .line 379
    goto :goto_35

    .line 378
    :catch_34
    move-exception v6

    .line 380
    :goto_35
    throw v5

    .line 373
    :catch_36
    move-exception v5

    .line 376
    :try_start_37
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 377
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3d} :catch_2a

    goto :goto_29

    .line 381
    :goto_3e
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    return-object v5
.end method

.method private unzip(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 14
    .param p1, "targetZip"    # Ljava/lang/String;
    .param p2, "targetFolder"    # Ljava/lang/String;

    .line 432
    const/4 v0, 0x1

    .line 433
    .local v0, "ret":Z
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 435
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_f

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 438
    :cond_f
    const/4 v2, 0x0

    .line 439
    .local v2, "fis":Ljava/io/FileInputStream;
    const/4 v3, 0x0

    .line 440
    .local v3, "fos":Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 442
    .local v4, "zis":Ljava/util/zip/ZipInputStream;
    const/16 v5, 0x1000

    new-array v5, v5, [B

    .line 444
    .local v5, "buffer":[B
    :try_start_16
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v2, v6

    .line 445
    new-instance v6, Ljava/util/zip/ZipInputStream;

    invoke-direct {v6, v2}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v4, v6

    .line 446
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v6

    .line 447
    .local v6, "ze":Ljava/util/zip/ZipEntry;
    :goto_26
    if-eqz v6, :cond_70

    .line 448
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    .line 449
    .local v7, "fileName":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 452
    .local v8, "newFile":Ljava/io/File;
    new-instance v9, Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 453
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v3, v9

    .line 455
    :goto_57
    invoke-virtual {v4, v5}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v9

    move v10, v9

    .local v10, "len":I
    if-lez v9, :cond_63

    .line 456
    const/4 v9, 0x0

    invoke-virtual {v3, v5, v9, v10}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_57

    .line 459
    :cond_63
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 460
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v9

    move-object v6, v9

    .line 461
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_6e} :catch_8a
    .catchall {:try_start_16 .. :try_end_6e} :catchall_88

    .line 462
    const/4 v3, 0x0

    .line 464
    .end local v7    # "fileName":Ljava/lang/String;
    .end local v8    # "newFile":Ljava/io/File;
    .end local v10    # "len":I
    goto :goto_26

    .line 471
    .end local v6    # "ze":Ljava/util/zip/ZipEntry;
    :cond_70
    if-eqz v3, :cond_77

    :try_start_72
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_75} :catch_76

    goto :goto_77

    .line 472
    :catch_76
    move-exception v6

    :cond_77
    :goto_77
    nop

    .line 475
    nop

    .line 476
    :try_start_79
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 477
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7f} :catch_80

    .line 479
    :goto_7f
    goto :goto_82

    :catch_80
    move-exception v6

    goto :goto_7f

    .line 483
    :goto_82
    :try_start_82
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_85} :catch_86

    .line 484
    :cond_85
    :goto_85
    goto :goto_a8

    :catch_86
    move-exception v6

    .line 485
    goto :goto_a8

    .line 470
    :catchall_88
    move-exception v6

    goto :goto_a9

    .line 465
    :catch_8a
    move-exception v6

    .line 466
    .local v6, "e":Ljava/io/IOException;
    :try_start_8b
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8e
    .catchall {:try_start_8b .. :try_end_8e} :catchall_88

    .line 467
    const/4 v0, 0x0

    .line 471
    .end local v6    # "e":Ljava/io/IOException;
    if-eqz v3, :cond_96

    :try_start_91
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_94} :catch_95

    goto :goto_96

    .line 472
    :catch_95
    move-exception v6

    :cond_96
    :goto_96
    nop

    .line 475
    if-eqz v4, :cond_a1

    .line 476
    :try_start_99
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 477
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_9f} :catch_a0

    goto :goto_a1

    .line 479
    :catch_a0
    move-exception v6

    :cond_a1
    :goto_a1
    nop

    .line 483
    if-eqz v2, :cond_85

    :try_start_a4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_a7} :catch_86

    goto :goto_85

    .line 486
    :goto_a8
    return v0

    .line 471
    :goto_a9
    if-eqz v3, :cond_b0

    :try_start_ab
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_ae
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_ae} :catch_af

    goto :goto_b0

    .line 472
    :catch_af
    move-exception v7

    :cond_b0
    :goto_b0
    nop

    .line 475
    if-eqz v4, :cond_bb

    .line 476
    :try_start_b3
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 477
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_b9
    .catch Ljava/io/IOException; {:try_start_b3 .. :try_end_b9} :catch_ba

    goto :goto_bb

    .line 479
    :catch_ba
    move-exception v7

    :cond_bb
    :goto_bb
    nop

    .line 483
    if-eqz v2, :cond_c3

    :try_start_be
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_c1
    .catch Ljava/io/IOException; {:try_start_be .. :try_end_c1} :catch_c2

    goto :goto_c3

    .line 484
    :catch_c2
    move-exception v7

    :cond_c3
    :goto_c3
    nop

    .line 485
    throw v6
.end method

.method private static writeFile([BLjava/lang/String;)V
    .registers 4
    .param p0, "input"    # [B
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 349
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 351
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1c

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 352
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 354
    :cond_1c
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 355
    .local v1, "outputStream":Ljava/io/FileOutputStream;
    invoke-virtual {v1, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 356
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 357
    return-void
.end method


# virtual methods
.method public isUpdatePolicy(Ljava/lang/String;)Z
    .registers 7
    .param p1, "versionFromDevice"    # Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    .line 48
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->mContainer:Lcom/android/server/asks/RUFSContainer;

    if-eqz v1, :cond_46

    .line 49
    invoke-virtual {v1}, Lcom/android/server/asks/RUFSContainer;->getPolicyVersion()Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, "versionFromToken":Ljava/lang/String;
    if-eqz v1, :cond_46

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_46

    .line 53
    :try_start_11
    iget-object v2, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "token:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " device:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-le v2, v3, :cond_44

    .line 55
    const/4 v0, 0x1

    .line 56
    iput-object p1, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->mVersionFromDevice:Ljava/lang/String;

    .line 57
    iget-object v2, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->TAG:Ljava/lang/String;

    const-string v3, " Now try to update"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_44} :catch_45

    .line 62
    :cond_44
    goto :goto_46

    .line 60
    :catch_45
    move-exception v2

    .line 65
    .end local v1    # "versionFromToken":Ljava/lang/String;
    :cond_46
    :goto_46
    return v0
.end method

.method public updatePolicy(Ljava/lang/String;)Z
    .registers 12
    .param p1, "apkBasePath"    # Ljava/lang/String;

    .line 71
    invoke-direct {p0}, Lcom/android/server/asks/RuleUpdateForSecurity;->enforcePermissionCheckForASKS()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 72
    iget-object v0, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "updatePolicy: enforced fail"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return v1

    .line 76
    :cond_10
    const/4 v0, 0x0

    .line 77
    .local v0, "mTokenFile":Landroid/util/jar/StrictJarFile;
    const/4 v2, 0x0

    .line 78
    .local v2, "mTokenEntry":Ljava/util/zip/ZipEntry;
    const/4 v3, 0x0

    .line 79
    .local v3, "ret":Z
    iget-object v4, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->mContainer:Lcom/android/server/asks/RUFSContainer;

    if-eqz v4, :cond_1a6

    .line 82
    iget-object v4, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TRY::::::::::::::"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :try_start_2d
    new-instance v4, Landroid/util/jar/StrictJarFile;

    const/4 v5, 0x1

    invoke-direct {v4, p1, v1, v5}, Landroid/util/jar/StrictJarFile;-><init>(Ljava/lang/String;ZZ)V

    move-object v0, v4

    .line 87
    nop

    .line 89
    const-string v1, "SEC-INF/targetinfo"

    invoke-virtual {v0, v1}, Landroid/util/jar/StrictJarFile;->findEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    move-object v2, v1

    .line 90
    if-nez v2, :cond_45

    .line 92
    const-string v1, "META-INF/SEC-INF/targetinfo"

    invoke-virtual {v0, v1}, Landroid/util/jar/StrictJarFile;->findEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    move-object v2, v1

    .line 95
    :cond_45
    if-eqz v2, :cond_17f

    .line 96
    iget-object v1, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->TAG:Ljava/lang/String;

    const-string v4, "Target Info exists"

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v1, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->mContainer:Lcom/android/server/asks/RUFSContainer;

    invoke-virtual {v1}, Lcom/android/server/asks/RUFSContainer;->getSizeofzip()J

    move-result-wide v6

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Long;->compare(JJ)I

    move-result v1

    if-nez v1, :cond_141

    .line 99
    invoke-direct {p0, v0, v2}, Lcom/android/server/asks/RuleUpdateForSecurity;->digest(Landroid/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;)Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "digestFromFile":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "digestFromFile  :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v4, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "digestFromtoken :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->mContainer:Lcom/android/server/asks/RUFSContainer;

    invoke-virtual {v7}, Lcom/android/server/asks/RUFSContainer;->getDigest()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v4, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->mContainer:Lcom/android/server/asks/RUFSContainer;

    invoke-virtual {v4}, Lcom/android/server/asks/RUFSContainer;->getDigest()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_140

    .line 103
    invoke-direct {p0, v0, v2}, Lcom/android/server/asks/RuleUpdateForSecurity;->readFile(Landroid/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;)[B

    move-result-object v4

    .line 104
    .local v4, "test":[B
    if-eqz v4, :cond_140

    .line 105
    const-string v6, "ASKSRUFS!!"

    invoke-direct {p0, v4, v6}, Lcom/android/server/asks/RuleUpdateForSecurity;->descramble([BLjava/lang/String;)[B

    move-result-object v6

    .line 106
    .local v6, "output":[B
    if-eqz v6, :cond_f5

    .line 108
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->device_basePath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".zip"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->device_policyCopyPath:Ljava/lang/String;

    .line 109
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->device_basePath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->mContainer:Lcom/android/server/asks/RUFSContainer;

    invoke-virtual {v8}, Lcom/android/server/asks/RUFSContainer;->getPolicyVersion()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->device_policyUnzipPath:Ljava/lang/String;

    .line 111
    iget-object v7, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->device_policyCopyPath:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/android/server/asks/RuleUpdateForSecurity;->writeFile([BLjava/lang/String;)V

    .line 112
    iget-object v7, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->device_policyCopyPath:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->device_policyUnzipPath:Ljava/lang/String;

    invoke-direct {p0, v7, v8}, Lcom/android/server/asks/RuleUpdateForSecurity;->unzip(Ljava/lang/String;Ljava/lang/String;)Z

    .line 114
    :cond_f5
    iget-object v7, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->device_policyUnzipPath:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/server/asks/RuleUpdateForSecurity;->compSizeofUncompressFiles(Ljava/lang/String;)Z

    move-result v7

    if-ne v7, v5, :cond_140

    .line 115
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->device_basePath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->mVersionFromDevice:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->device_basePath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->mContainer:Lcom/android/server/asks/RUFSContainer;

    invoke-virtual {v9}, Lcom/android/server/asks/RUFSContainer;->getPolicyVersion()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/server/asks/RuleUpdateForSecurity;->applypolicys(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-ne v7, v5, :cond_140

    .line 116
    const/4 v3, 0x1

    .line 117
    iget-object v5, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "policy applied!"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .end local v1    # "digestFromFile":Ljava/lang/String;
    .end local v4    # "test":[B
    .end local v6    # "output":[B
    :cond_140
    goto :goto_186

    .line 124
    :cond_141
    iget-object v1, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->TAG:Ljava/lang/String;

    const-string v4, "Fail"

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v1, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ticke size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->mContainer:Lcom/android/server/asks/RUFSContainer;

    invoke-virtual {v5}, Lcom/android/server/asks/RUFSContainer;->getSizeofzip()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v1, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Token size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_186

    .line 130
    :cond_17f
    iget-object v1, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->TAG:Ljava/lang/String;

    const-string v4, " mTokenEntry is null plz check "

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_186
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_186} :catch_19e
    .catch Ljava/lang/SecurityException; {:try_start_2d .. :try_end_186} :catch_196
    .catchall {:try_start_2d .. :try_end_186} :catchall_18c

    .line 144
    :goto_186
    :try_start_186
    invoke-virtual {v0}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_189
    .catch Ljava/io/IOException; {:try_start_186 .. :try_end_189} :catch_18a

    .line 145
    :cond_189
    :goto_189
    goto :goto_1a6

    :catch_18a
    move-exception v1

    .line 146
    goto :goto_1a6

    .line 143
    :catchall_18c
    move-exception v1

    .line 144
    if-eqz v0, :cond_194

    :try_start_18f
    invoke-virtual {v0}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_192
    .catch Ljava/io/IOException; {:try_start_18f .. :try_end_192} :catch_193

    goto :goto_194

    .line 145
    :catch_193
    move-exception v4

    :cond_194
    :goto_194
    nop

    .line 146
    throw v1

    .line 139
    :catch_196
    move-exception v1

    .line 141
    .local v1, "e":Ljava/lang/SecurityException;
    const/4 v3, 0x0

    .line 144
    .end local v1    # "e":Ljava/lang/SecurityException;
    if-eqz v0, :cond_189

    :try_start_19a
    invoke-virtual {v0}, Landroid/util/jar/StrictJarFile;->close()V

    goto :goto_189

    .line 136
    :catch_19e
    move-exception v1

    .line 138
    .local v1, "m":Ljava/io/IOException;
    const/4 v3, 0x0

    .line 144
    .end local v1    # "m":Ljava/io/IOException;
    if-eqz v0, :cond_189

    invoke-virtual {v0}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_1a5
    .catch Ljava/io/IOException; {:try_start_19a .. :try_end_1a5} :catch_18a

    goto :goto_189

    .line 148
    :cond_1a6
    :goto_1a6
    return v3
.end method
