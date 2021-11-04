.class Lcom/android/server/enterprise/dualsim/DualSimDBProxy;
.super Ljava/lang/Object;
.source "DualSimDBProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DualSimDBProxy"

.field private static mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->mContext:Landroid/content/Context;

    .line 53
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 54
    return-void
.end method

.method static getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/dualsim/DualSimDBProxy;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 57
    sget-object v0, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    if-nez v0, :cond_b

    .line 58
    new-instance v0, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    .line 60
    :cond_b
    sget-object v0, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    return-object v0
.end method


# virtual methods
.method addCorporateSimcard(ILjava/lang/String;)Z
    .registers 9
    .param p1, "uid"    # I
    .param p2, "iccid"    # Ljava/lang/String;

    .line 148
    iget-object v0, p0, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "DualSim"

    const-string v2, "DS_IccId"

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 151
    .local v0, "aUid":I
    if-ne v0, p1, :cond_e

    .line 152
    const/4 v1, 0x1

    return v1

    .line 154
    :cond_e
    const/4 v3, -0x1

    if-ne v0, v3, :cond_29

    .line 155
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 156
    .local v3, "cv":Landroid/content/ContentValues;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "adminUid"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 157
    invoke-virtual {v3, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v2, p0, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v2, v1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v1

    return v1

    .line 160
    .end local v3    # "cv":Landroid/content/ContentValues;
    :cond_29
    const/4 v1, 0x0

    return v1
.end method

.method addPhoneToSimcardWhiteList(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .param p1, "uid"    # I
    .param p2, "iccid"    # Ljava/lang/String;
    .param p3, "phone"    # Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "DualSim"

    const-string v2, "DS_IccId"

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 96
    .local v0, "aUid":I
    if-eq v0, p1, :cond_e

    .line 97
    const/4 v1, 0x0

    return v1

    .line 99
    :cond_e
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 100
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v3, "WhiteListNumbers"

    invoke-virtual {v1, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "adminUid"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addPhoneToSimcardWhiteList -> uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DualSimDBProxy"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v2, p0, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "DSWhiteList"

    invoke-virtual {v2, v3, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v2

    .line 106
    .local v2, "ret":Z
    return v2
.end method

.method clearWhiteList(ILjava/lang/String;)Z
    .registers 9
    .param p1, "uid"    # I
    .param p2, "iccid"    # Ljava/lang/String;

    .line 130
    iget-object v0, p0, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "DualSim"

    const-string v2, "DS_IccId"

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 132
    .local v0, "aUid":I
    const/4 v1, 0x0

    if-eq v0, p1, :cond_e

    .line 133
    return v1

    .line 135
    :cond_e
    const/4 v3, 0x0

    .line 136
    .local v3, "result":I
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 137
    .local v4, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v4, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v2, p0, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "DSWhiteList"

    invoke-virtual {v2, v5, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByFields(Ljava/lang/String;Ljava/util/HashMap;)I

    move-result v2

    .line 140
    .end local v3    # "result":I
    .local v2, "result":I
    const/4 v3, 0x1

    if-lt v2, v3, :cond_23

    .line 141
    return v3

    .line 143
    :cond_23
    return v1
.end method

.method disableForceData()Z
    .registers 5

    .line 274
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 275
    .local v0, "cvUpdate":Landroid/content/ContentValues;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 277
    .local v1, "cvWhere":Landroid/content/ContentValues;
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SimDataForce"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object v2, p0, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "DualSim"

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v2

    return v2
.end method

.method forceDataThroughSimcard(Ljava/lang/String;)Z
    .registers 10
    .param p1, "iccid"    # Ljava/lang/String;

    .line 225
    invoke-virtual {p0}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->getForcedDataSimcard()Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, "aIccid":Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 227
    .local v1, "cvUpdate":Landroid/content/ContentValues;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 229
    .local v2, "cvWhere":Landroid/content/ContentValues;
    const-string v3, "DualSim"

    const-string v4, "DS_IccId"

    const/4 v5, 0x1

    const-string v6, "SimDataForce"

    if-eqz v0, :cond_2e

    .line 230
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 231
    return v5

    .line 233
    :cond_1e
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-virtual {v2, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-object v7, p0, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v7, v3, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    .line 237
    :cond_2e
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 238
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 239
    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-virtual {v2, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object v4, p0, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v4, v3, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v3

    return v3
.end method

.method getActiveSimcardForMessaging()Ljava/lang/String;
    .registers 6

    .line 216
    iget-object v0, p0, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 218
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    .line 216
    const-string v2, "DualSim"

    const-string v3, "SimActiveMessaging"

    const-string v4, "DS_IccId"

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getForcedDataSimcard()Ljava/lang/String;
    .registers 6

    .line 246
    iget-object v0, p0, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 248
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    .line 246
    const-string v2, "DualSim"

    const-string v3, "SimDataForce"

    const-string v4, "DS_IccId"

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getWhiteListForSimcard(ILjava/lang/String;)Ljava/util/List;
    .registers 11
    .param p1, "uid"    # I
    .param p2, "iccid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "DS_IccId"

    const/4 v2, -0x1

    if-le p1, v2, :cond_15

    .line 68
    iget-object v2, p0, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "DualSim"

    invoke-virtual {v2, v3, v1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 70
    .local v2, "aUid":I
    if-eq v2, p1, :cond_15

    .line 71
    return-object v0

    .line 74
    .end local v2    # "aUid":I
    :cond_15
    const-string v2, "WhiteListNumbers"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    .line 75
    .local v3, "columns":[Ljava/lang/String;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 76
    .local v4, "cv":Landroid/content/ContentValues;
    invoke-virtual {v4, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v1, p0, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 79
    const-string v5, "DSWhiteList"

    invoke-virtual {v1, v5, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v1

    .line 81
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 82
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    const/4 v6, 0x0

    .line 84
    .local v6, "rCv":Landroid/content/ContentValues;
    :goto_30
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_47

    .line 85
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v6, v7

    check-cast v6, Landroid/content/ContentValues;

    .line 86
    invoke-virtual {v6, v2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_30

    .line 88
    :cond_47
    return-object v0
.end method

.method isCorporateSimcard(ILjava/lang/String;)Z
    .registers 6
    .param p1, "uid"    # I
    .param p2, "iccid"    # Ljava/lang/String;

    .line 172
    iget-object v0, p0, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "DualSim"

    const-string v2, "DS_IccId"

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 174
    .local v0, "aUid":I
    if-ne v0, p1, :cond_e

    .line 175
    const/4 v1, 0x1

    return v1

    .line 177
    :cond_e
    const/4 v1, 0x0

    return v1
.end method

.method isCorporateSimcard(Ljava/lang/String;)Z
    .registers 5
    .param p1, "iccid"    # Ljava/lang/String;

    .line 182
    iget-object v0, p0, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "DualSim"

    const-string v2, "DS_IccId"

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 184
    .local v0, "aUid":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_f

    .line 185
    const/4 v1, 0x1

    return v1

    .line 187
    :cond_f
    const/4 v1, 0x0

    return v1
.end method

.method isDataForced()Z
    .registers 9

    .line 254
    const-string v0, "SimDataForce"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, "columns":[Ljava/lang/String;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 256
    .local v2, "values":[Ljava/lang/String;
    const-string v3, "adminUid"

    const-string v5, "DS_IccId"

    filled-new-array {v3, v5}, [Ljava/lang/String;

    move-result-object v3

    .line 258
    .local v3, "returnColumns":[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 259
    const-string v6, "DualSim"

    invoke-virtual {v5, v6, v0, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 263
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 265
    .local v6, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    if-eqz v6, :cond_2d

    .line 266
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2d

    .line 267
    return v1

    .line 269
    :cond_2d
    return v4
.end method

.method removeCorporateSimcard(ILjava/lang/String;)Z
    .registers 6
    .param p1, "uid"    # I
    .param p2, "iccid"    # Ljava/lang/String;

    .line 165
    iget-object v0, p0, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "DualSim"

    const-string v2, "DS_IccId"

    invoke-virtual {v0, v1, p1, v2, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method removePhoneFromSimcardWhiteList(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .param p1, "uid"    # I
    .param p2, "iccid"    # Ljava/lang/String;
    .param p3, "phone"    # Ljava/lang/String;

    .line 111
    iget-object v0, p0, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "DualSim"

    const-string v2, "DS_IccId"

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 113
    .local v0, "aUid":I
    const/4 v1, 0x0

    if-eq v0, p1, :cond_e

    .line 114
    return v1

    .line 116
    :cond_e
    const/4 v3, 0x0

    .line 117
    .local v3, "result":I
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 118
    .local v4, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v4, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const-string v2, "WhiteListNumbers"

    invoke-virtual {v4, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v2, p0, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "DSWhiteList"

    invoke-virtual {v2, v5, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByFields(Ljava/lang/String;Ljava/util/HashMap;)I

    move-result v2

    .line 122
    .end local v3    # "result":I
    .local v2, "result":I
    const/4 v3, 0x1

    if-lt v2, v3, :cond_28

    .line 123
    return v3

    .line 125
    :cond_28
    return v1
.end method

.method setActiveSimcardForMessaging(Ljava/lang/String;)Z
    .registers 10
    .param p1, "iccid"    # Ljava/lang/String;

    .line 195
    invoke-virtual {p0}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->getActiveSimcardForMessaging()Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "aIccid":Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 197
    .local v1, "cvUpdate":Landroid/content/ContentValues;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 199
    .local v2, "cvWhere":Landroid/content/ContentValues;
    const-string v3, "DualSim"

    const-string v4, "DS_IccId"

    const/4 v5, 0x1

    const-string v6, "SimActiveMessaging"

    if-eqz v0, :cond_2e

    .line 200
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 201
    return v5

    .line 203
    :cond_1e
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-virtual {v2, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object v7, p0, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v7, v3, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    .line 207
    :cond_2e
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 208
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 209
    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-virtual {v2, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v4, p0, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v4, v3, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v3

    return v3
.end method
