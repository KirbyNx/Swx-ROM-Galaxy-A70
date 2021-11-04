.class Lcom/android/server/people/data/ContactsQueryHelper;
.super Ljava/lang/Object;
.source "ContactsQueryHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ContactsQueryHelper"


# instance fields
.field private mContactUri:Landroid/net/Uri;

.field private final mContext:Landroid/content/Context;

.field private mIsStarred:Z

.field private mLastUpdatedTimestamp:J

.field private mPhoneNumber:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/server/people/data/ContactsQueryHelper;->mContext:Landroid/content/Context;

    .line 43
    return-void
.end method

.method private queryContact(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 20
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .line 115
    move-object v1, p0

    const/4 v2, 0x0

    .line 116
    .local v2, "lookupKey":Ljava/lang/String;
    const/4 v3, 0x0

    .line 117
    .local v3, "hasPhoneNumber":Z
    const/4 v4, 0x0

    .line 118
    .local v4, "found":Z
    iget-object v0, v1, Lcom/android/server/people/data/ContactsQueryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v10, 0x0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 120
    .local v5, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x0

    if-nez v5, :cond_28

    .line 121
    :try_start_1a
    const-string v6, "ContactsQueryHelper"

    const-string v7, "Cursor is null when querying contact."

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_8e

    .line 122
    nop

    .line 152
    if-eqz v5, :cond_27

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 122
    :cond_27
    return v0

    .line 124
    :cond_28
    :goto_28
    :try_start_28
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_7d

    .line 126
    const-string v6, "_id"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 127
    .local v6, "idIndex":I
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 130
    .local v7, "contactId":J
    const-string/jumbo v9, "lookup"

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 131
    .local v9, "lookupKeyIndex":I
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object v2, v10

    .line 133
    invoke-static {v7, v8, v2}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iput-object v10, v1, Lcom/android/server/people/data/ContactsQueryHelper;->mContactUri:Landroid/net/Uri;

    .line 136
    const-string/jumbo v10, "starred"

    invoke-interface {v5, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 137
    .local v10, "starredIndex":I
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/4 v12, 0x1

    if-eqz v11, :cond_5a

    move v11, v12

    goto :goto_5b

    :cond_5a
    move v11, v0

    :goto_5b
    iput-boolean v11, v1, Lcom/android/server/people/data/ContactsQueryHelper;->mIsStarred:Z

    .line 140
    const-string/jumbo v11, "has_phone_number"

    invoke-interface {v5, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 141
    .local v11, "hasPhoneNumIndex":I
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    if-eqz v13, :cond_6b

    goto :goto_6c

    :cond_6b
    move v12, v0

    :goto_6c
    move v3, v12

    .line 144
    const-string v12, "contact_last_updated_timestamp"

    invoke-interface {v5, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 146
    .local v12, "lastUpdatedTimestampIndex":I
    if-ltz v12, :cond_7b

    .line 147
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    iput-wide v13, v1, Lcom/android/server/people/data/ContactsQueryHelper;->mLastUpdatedTimestamp:J
    :try_end_7b
    .catchall {:try_start_28 .. :try_end_7b} :catchall_8e

    .line 150
    :cond_7b
    const/4 v4, 0x1

    .line 151
    .end local v6    # "idIndex":I
    .end local v9    # "lookupKeyIndex":I
    .end local v10    # "starredIndex":I
    .end local v11    # "hasPhoneNumIndex":I
    .end local v12    # "lastUpdatedTimestampIndex":I
    goto :goto_28

    .line 152
    .end local v7    # "contactId":J
    :cond_7d
    if-eqz v5, :cond_82

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 153
    .end local v5    # "cursor":Landroid/database/Cursor;
    :cond_82
    if-eqz v4, :cond_8d

    if-eqz v2, :cond_8d

    if-eqz v3, :cond_8d

    .line 154
    invoke-direct {p0, v2}, Lcom/android/server/people/data/ContactsQueryHelper;->queryPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 156
    :cond_8d
    return v4

    .line 118
    .restart local v5    # "cursor":Landroid/database/Cursor;
    :catchall_8e
    move-exception v0

    move-object v6, v0

    if-eqz v5, :cond_9b

    :try_start_92
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_95
    .catchall {:try_start_92 .. :try_end_95} :catchall_96

    goto :goto_9b

    :catchall_96
    move-exception v0

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_9b
    :goto_9b
    throw v6
.end method

.method private queryPhoneNumber(Ljava/lang/String;)Z
    .registers 12
    .param p1, "lookupKey"    # Ljava/lang/String;

    .line 160
    const-string v0, "data4"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    .line 162
    .local v3, "projection":[Ljava/lang/String;
    const-string/jumbo v7, "lookup = ?"

    .line 163
    .local v7, "selection":Ljava/lang/String;
    const/4 v8, 0x1

    new-array v5, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p1, v5, v9

    .line 164
    .local v5, "selectionArgs":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/people/data/ContactsQueryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    move-object v4, v7

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 167
    .local v1, "cursor":Landroid/database/Cursor;
    if-nez v1, :cond_2d

    .line 168
    :try_start_1f
    const-string v0, "ContactsQueryHelper"

    const-string v2, "Cursor is null when querying contact phone number."

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_46

    .line 169
    nop

    .line 179
    if-eqz v1, :cond_2c

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 169
    :cond_2c
    return v9

    .line 171
    :cond_2d
    :goto_2d
    :try_start_2d
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 173
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 175
    .local v2, "phoneNumIdx":I
    if-ltz v2, :cond_3f

    .line 176
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/people/data/ContactsQueryHelper;->mPhoneNumber:Ljava/lang/String;
    :try_end_3f
    .catchall {:try_start_2d .. :try_end_3f} :catchall_46

    .line 178
    .end local v2    # "phoneNumIdx":I
    :cond_3f
    goto :goto_2d

    .line 179
    :cond_40
    if-eqz v1, :cond_45

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 180
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_45
    return v8

    .line 164
    .restart local v1    # "cursor":Landroid/database/Cursor;
    :catchall_46
    move-exception v0

    if-eqz v1, :cond_51

    :try_start_49
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_4d

    goto :goto_51

    :catchall_4d
    move-exception v2

    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_51
    :goto_51
    throw v0
.end method

.method private queryWithEmail(Ljava/lang/String;)Z
    .registers 4
    .param p1, "email"    # Ljava/lang/String;

    .line 101
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    .line 102
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 101
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 103
    .local v0, "emailUri":Landroid/net/Uri;
    invoke-direct {p0, v0}, Lcom/android/server/people/data/ContactsQueryHelper;->queryWithUri(Landroid/net/Uri;)Z

    move-result v1

    return v1
.end method

.method private queryWithPhoneNumber(Ljava/lang/String;)Z
    .registers 4
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .line 95
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 96
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 95
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 97
    .local v0, "phoneUri":Landroid/net/Uri;
    invoke-direct {p0, v0}, Lcom/android/server/people/data/ContactsQueryHelper;->queryWithUri(Landroid/net/Uri;)Z

    move-result v1

    return v1
.end method

.method private queryWithUri(Landroid/net/Uri;)Z
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;

    .line 107
    const-string v0, "_id"

    const-string/jumbo v1, "lookup"

    const-string/jumbo v2, "starred"

    const-string/jumbo v3, "has_phone_number"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "projection":[Ljava/lang/String;
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/android/server/people/data/ContactsQueryHelper;->queryContact(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method getContactUri()Landroid/net/Uri;
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/android/server/people/data/ContactsQueryHelper;->mContactUri:Landroid/net/Uri;

    return-object v0
.end method

.method getLastUpdatedTimestamp()J
    .registers 3

    .line 91
    iget-wide v0, p0, Lcom/android/server/people/data/ContactsQueryHelper;->mLastUpdatedTimestamp:J

    return-wide v0
.end method

.method getPhoneNumber()Ljava/lang/String;
    .registers 2

    .line 87
    iget-object v0, p0, Lcom/android/server/people/data/ContactsQueryHelper;->mPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method isStarred()Z
    .registers 2

    .line 82
    iget-boolean v0, p0, Lcom/android/server/people/data/ContactsQueryHelper;->mIsStarred:Z

    return v0
.end method

.method query(Ljava/lang/String;)Z
    .registers 6
    .param p1, "contactUri"    # Ljava/lang/String;

    .line 51
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 52
    return v1

    .line 54
    :cond_8
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 55
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "tel"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 56
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/people/data/ContactsQueryHelper;->queryWithPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 57
    :cond_22
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "mailto"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 58
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/people/data/ContactsQueryHelper;->queryWithEmail(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 59
    :cond_38
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 60
    invoke-direct {p0, v0}, Lcom/android/server/people/data/ContactsQueryHelper;->queryWithUri(Landroid/net/Uri;)Z

    move-result v1

    return v1

    .line 62
    :cond_49
    return v1
.end method

.method querySince(J)Z
    .registers 8
    .param p1, "sinceTime"    # J

    .line 68
    const-string v0, "_id"

    const-string/jumbo v1, "lookup"

    const-string/jumbo v2, "starred"

    const-string/jumbo v3, "has_phone_number"

    const-string v4, "contact_last_updated_timestamp"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "projection":[Ljava/lang/String;
    const-string v1, "contact_last_updated_timestamp > ?"

    .line 72
    .local v1, "selection":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 73
    .local v2, "selectionArgs":[Ljava/lang/String;
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/android/server/people/data/ContactsQueryHelper;->queryContact(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    return v3
.end method
