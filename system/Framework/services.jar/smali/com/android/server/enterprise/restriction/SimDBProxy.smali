.class Lcom/android/server/enterprise/restriction/SimDBProxy;
.super Ljava/lang/Object;
.source "SimDBProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mSimDBProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 43
    const-class v0, Lcom/android/server/enterprise/restriction/SimDBProxy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/restriction/SimDBProxy;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/server/enterprise/restriction/SimDBProxy;->mContext:Landroid/content/Context;

    .line 47
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/restriction/SimDBProxy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 48
    return-void
.end method

.method static getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/restriction/SimDBProxy;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 51
    sget-object v0, Lcom/android/server/enterprise/restriction/SimDBProxy;->mSimDBProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    if-nez v0, :cond_b

    .line 52
    new-instance v0, Lcom/android/server/enterprise/restriction/SimDBProxy;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/restriction/SimDBProxy;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/enterprise/restriction/SimDBProxy;->mSimDBProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    .line 54
    :cond_b
    sget-object v0, Lcom/android/server/enterprise/restriction/SimDBProxy;->mSimDBProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    return-object v0
.end method


# virtual methods
.method addSimcard(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .param p1, "uid"    # I
    .param p2, "iccid"    # Ljava/lang/String;
    .param p3, "pincode"    # Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/SimDBProxy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "SimTable"

    const-string v2, "SimIccId"

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 62
    .local v0, "aUid":I
    if-ne v0, p1, :cond_e

    .line 63
    const/4 v1, 0x1

    return v1

    .line 65
    :cond_e
    const/4 v3, -0x1

    if-ne v0, v3, :cond_2e

    .line 66
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 67
    .local v3, "cv":Landroid/content/ContentValues;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "adminUid"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 68
    invoke-virtual {v3, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v2, "SimPinCode"

    invoke-virtual {v3, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/SimDBProxy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v2, v1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v1

    return v1

    .line 72
    .end local v3    # "cv":Landroid/content/ContentValues;
    :cond_2e
    const/4 v1, 0x0

    return v1
.end method

.method getAdminBySimcard(Ljava/lang/String;)I
    .registers 5
    .param p1, "iccId"    # Ljava/lang/String;

    .line 128
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/SimDBProxy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "SimTable"

    const-string v2, "SimIccId"

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method getIccIdListByAdmin()[Ljava/lang/String;
    .registers 7

    .line 132
    const-string v0, "SimIccId"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, "iccIdColumn":[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/SimDBProxy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "SimTable"

    invoke-virtual {v2, v4, v1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v2

    .line 137
    .local v2, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    .line 138
    .local v3, "iccIdList":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1a
    array-length v5, v3

    if-ge v4, v5, :cond_2c

    .line 139
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    invoke-virtual {v5, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 138
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 141
    .end local v4    # "i":I
    :cond_2c
    return-object v3
.end method

.method getPincode(ILjava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "uid"    # I
    .param p2, "iccid"    # Ljava/lang/String;

    .line 107
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/SimDBProxy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "SimTable"

    const-string v3, "SimIccId"

    const-string v5, "SimPinCode"

    move v2, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "pinCode":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, " uid "

    if-eqz v1, :cond_33

    .line 112
    sget-object v1, Lcom/android/server/enterprise/restriction/SimDBProxy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find pincode for iccId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4f

    .line 114
    :cond_33
    sget-object v1, Lcom/android/server/enterprise/restriction/SimDBProxy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Successfully found pincode for iccId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :goto_4f
    return-object v0
.end method

.method getPincode(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "iccid"    # Ljava/lang/String;

    .line 94
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/SimDBProxy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "SimTable"

    const-string v2, "SimIccId"

    const-string v3, "SimPinCode"

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "pinCode":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 98
    sget-object v1, Lcom/android/server/enterprise/restriction/SimDBProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find pincode for iccId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f

    .line 100
    :cond_29
    sget-object v1, Lcom/android/server/enterprise/restriction/SimDBProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Successfully found pincode for iccId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :goto_3f
    return-object v0
.end method

.method hasAnySimcard()Z
    .registers 4

    .line 121
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/SimDBProxy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "SimTable"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v0

    if-lez v0, :cond_d

    .line 122
    const/4 v0, 0x1

    return v0

    .line 124
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method removeSimcard(ILjava/lang/String;)Z
    .registers 6
    .param p1, "uid"    # I
    .param p2, "iccid"    # Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/SimDBProxy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "SimTable"

    const-string v2, "SimIccId"

    invoke-virtual {v0, v1, p1, v2, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method removeSimcardsByAdmin(I)Z
    .registers 4
    .param p1, "uid"    # I

    .line 82
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/SimDBProxy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "SimTable"

    invoke-virtual {v0, v1, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByAdmin(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method setPincode(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .param p1, "uid"    # I
    .param p2, "iccid"    # Ljava/lang/String;
    .param p3, "pin"    # Ljava/lang/String;

    .line 86
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 87
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "SimPinCode"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/SimDBProxy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "SimTable"

    const-string v4, "SimIccId"

    move v3, p1

    move-object v5, p2

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesForAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v1

    return v1
.end method
