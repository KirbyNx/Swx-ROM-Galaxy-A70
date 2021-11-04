.class public Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipData;
.super Ljava/lang/Object;
.source "RemoteClipData.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "[MCF_DS_LIB]_RemoteClipData"

.field public static final TYPE_BYTE_HTML:B = 0x2t

.field public static final TYPE_BYTE_IMAGE:B = 0x4t

.field public static final TYPE_BYTE_INVALID:B = 0x0t

.field public static final TYPE_BYTE_TEXT:B = 0x1t

.field public static final TYPE_BYTE_URI:B = 0x3t

.field public static final TYPE_BYTE_URI_LIST:B = 0x5t


# instance fields
.field private final mId:Ljava/lang/String;

.field private mIsExceed:Z

.field private final mIsLocal:Z

.field private final mLocalDataFiles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemoteDir:Ljava/lang/String;

.field private final mSemClipType:I


# direct methods
.method private constructor <init>(ILjava/util/HashMap;)V
    .registers 4
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 33
    .local p2, "dataFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v0, "localClip"

    iput-object v0, p0, Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipData;->mId:Ljava/lang/String;

    .line 35
    iput p1, p0, Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipData;->mSemClipType:I

    .line 36
    iput-object p2, p0, Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipData;->mLocalDataFiles:Ljava/util/HashMap;

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipData;->mRemoteDir:Ljava/lang/String;

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipData;->mIsLocal:Z

    .line 39
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .registers 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "dataPath"    # Ljava/lang/String;
    .param p4, "isExceed"    # Z

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipData;->mId:Ljava/lang/String;

    .line 44
    iput p2, p0, Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipData;->mSemClipType:I

    .line 45
    iput-object p3, p0, Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipData;->mRemoteDir:Ljava/lang/String;

    .line 46
    iput-boolean p4, p0, Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipData;->mIsExceed:Z

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipData;->mLocalDataFiles:Ljava/util/HashMap;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipData;->mIsLocal:Z

    .line 49
    return-void
.end method

.method public static createFromBundle(Landroid/os/Bundle;)Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipData;
    .registers 10
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 105
    const-string v0, "is_local"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 106
    .local v0, "isLocal":Z
    const-string v1, "rclip_type"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 107
    .local v1, "type":I
    const-string v2, "[MCF_DS_LIB]_RemoteClipData"

    const-string v3, "rclip_path"

    if-eqz v0, :cond_67

    .line 109
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    .line 110
    .local v3, "serializable":Ljava/io/Serializable;
    instance-of v4, v3, Ljava/util/HashMap;

    if-eqz v4, :cond_61

    .line 111
    move-object v2, v3

    check-cast v2, Ljava/util/HashMap;

    .line 112
    .local v2, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<**>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 113
    .local v4, "files":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 114
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Ljava/lang/String;

    if-eqz v7, :cond_5a

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Ljava/lang/String;

    if-eqz v7, :cond_5a

    .line 115
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    :cond_5a
    goto :goto_2f

    .line 118
    :cond_5b
    new-instance v5, Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipData;

    invoke-direct {v5, v1, v4}, Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipData;-><init>(ILjava/util/HashMap;)V

    return-object v5

    .line 121
    .end local v2    # "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<**>;"
    .end local v4    # "files":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_61
    const-string v4, "createFromBundle - local : invalid files"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .end local v3    # "serializable":Ljava/io/Serializable;
    goto :goto_86

    .line 124
    :cond_67
    const-string v4, "rclip_id"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 125
    .local v4, "id":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 126
    .local v3, "path":Ljava/lang/String;
    const-string v5, "is_exceed"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 128
    .local v5, "isExceed":Z
    if-eqz v4, :cond_81

    if-eqz v3, :cond_81

    .line 129
    new-instance v2, Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipData;

    invoke-direct {v2, v4, v1, v3, v5}, Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipData;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    return-object v2

    .line 132
    :cond_81
    const-string v6, "createFromBundle - remote : null id or path"

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "id":Ljava/lang/String;
    .end local v5    # "isExceed":Z
    :goto_86
    const/4 v2, 0x0

    return-object v2
.end method

.method public static createFromEventPayload(Ljava/lang/String;ILjava/lang/String;Z)Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipData;
    .registers 6
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "type"    # I
    .param p2, "dataPath"    # Ljava/lang/String;
    .param p3, "isExceed"    # Z

    .line 141
    if-nez p2, :cond_b

    .line 142
    const-string v0, "[MCF_DS_LIB]_RemoteClipData"

    const-string v1, "createFromEventPayload-invalid path"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const/4 v0, 0x0

    return-object v0

    .line 145
    :cond_b
    new-instance v0, Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipData;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipData;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    return-object v0
.end method

.method private static getByteFromSemClipDataType(I)B
    .registers 3
    .param p0, "type"    # I

    .line 165
    const/4 v0, 0x1

    if-eq p0, v0, :cond_2f

    const/4 v0, 0x4

    const/4 v1, 0x2

    if-eq p0, v1, :cond_2e

    if-eq p0, v0, :cond_2d

    const/16 v0, 0x10

    if-eq p0, v0, :cond_2b

    const/16 v0, 0x20

    if-eq p0, v0, :cond_29

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getByteFromSemClipDataType - invalid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[MCF_DS_LIB]_RemoteClipData"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const/4 v0, 0x0

    return v0

    .line 175
    :cond_29
    const/4 v0, 0x5

    return v0

    .line 171
    :cond_2b
    const/4 v0, 0x3

    return v0

    .line 169
    :cond_2d
    return v1

    .line 173
    :cond_2e
    return v0

    .line 167
    :cond_2f
    return v0
.end method

.method public static getSemClipDateTypeFromByte(B)I
    .registers 4
    .param p0, "typeByte"    # B

    .line 184
    const/4 v0, 0x1

    if-eq p0, v0, :cond_19

    const/4 v0, 0x4

    const/4 v1, 0x2

    if-eq p0, v1, :cond_18

    const/4 v2, 0x3

    if-eq p0, v2, :cond_15

    if-eq p0, v0, :cond_14

    const/4 v0, 0x5

    if-eq p0, v0, :cond_11

    .line 196
    const/4 v0, 0x0

    return v0

    .line 194
    :cond_11
    const/16 v0, 0x20

    return v0

    .line 192
    :cond_14
    return v1

    .line 190
    :cond_15
    const/16 v0, 0x10

    return v0

    .line 188
    :cond_18
    return v0

    .line 186
    :cond_19
    return v0
.end method


# virtual methods
.method public getBundle()Landroid/os/Bundle;
    .registers 5

    .line 90
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 91
    .local v0, "bundle":Landroid/os/Bundle;
    iget v1, p0, Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipData;->mSemClipType:I

    const-string v2, "rclip_type"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 92
    iget-boolean v1, p0, Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipData;->mIsLocal:Z

    const-string v2, "is_local"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 93
    iget-boolean v1, p0, Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipData;->mIsLocal:Z

    const-string v2, "rclip_path"

    if-eqz v1, :cond_1f

    .line 94
    iget-object v1, p0, Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipData;->mLocalDataFiles:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_32

    .line 96
    :cond_1f
    iget-object v1, p0, Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipData;->mId:Ljava/lang/String;

    const-string v3, "rclip_id"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v1, p0, Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipData;->mRemoteDir:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-boolean v1, p0, Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipData;->mIsExceed:Z

    const-string v2, "is_exceed"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 100
    :goto_32
    return-object v0
.end method

.method public getDataTypeByte()B
    .registers 2

    .line 66
    iget v0, p0, Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipData;->mSemClipType:I

    invoke-static {v0}, Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipData;->getByteFromSemClipDataType(I)B

    move-result v0

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipData;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalDataFiles()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipData;->mLocalDataFiles:Ljava/util/HashMap;

    return-object v0
.end method

.method public getRemoteDir()Ljava/lang/String;
    .registers 2

    .line 80
    iget-object v0, p0, Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipData;->mRemoteDir:Ljava/lang/String;

    return-object v0
.end method

.method public getSemClipDataType()I
    .registers 2

    .line 53
    iget v0, p0, Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipData;->mSemClipType:I

    return v0
.end method

.method public isExceed()Z
    .registers 2

    .line 84
    iget-boolean v0, p0, Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipData;->mIsExceed:Z

    return v0
.end method

.method public isMyId(Ljava/lang/String;)Z
    .registers 3
    .param p1, "id"    # Ljava/lang/String;

    .line 62
    iget-object v0, p0, Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipData;->mId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteClipData : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipData;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
