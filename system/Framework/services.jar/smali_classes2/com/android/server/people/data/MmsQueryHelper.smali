.class Lcom/android/server/people/data/MmsQueryHelper;
.super Ljava/lang/Object;
.source "MmsQueryHelper.java"


# static fields
.field private static final MILLIS_PER_SECONDS:J = 0x3e8L

.field private static final MSG_BOX_TO_EVENT_TYPE:Landroid/util/SparseIntArray;

.field private static final TAG:Ljava/lang/String; = "MmsQueryHelper"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentCountryIso:Ljava/lang/String;

.field private final mEventConsumer:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/String;",
            "Lcom/android/server/people/data/Event;",
            ">;"
        }
    .end annotation
.end field

.field private mLastMessageTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 41
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/android/server/people/data/MmsQueryHelper;->MSG_BOX_TO_EVENT_TYPE:Landroid/util/SparseIntArray;

    .line 44
    const/4 v1, 0x1

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 45
    sget-object v0, Lcom/android/server/people/data/MmsQueryHelper;->MSG_BOX_TO_EVENT_TYPE:Landroid/util/SparseIntArray;

    const/4 v1, 0x2

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 46
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/function/BiConsumer;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/String;",
            "Lcom/android/server/people/data/Event;",
            ">;)V"
        }
    .end annotation

    .line 58
    .local p2, "eventConsumer":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Ljava/lang/String;Lcom/android/server/people/data/Event;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/android/server/people/data/MmsQueryHelper;->mContext:Landroid/content/Context;

    .line 60
    iput-object p2, p0, Lcom/android/server/people/data/MmsQueryHelper;->mEventConsumer:Ljava/util/function/BiConsumer;

    .line 61
    invoke-static {p1}, Lcom/android/server/people/data/Utils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/people/data/MmsQueryHelper;->mCurrentCountryIso:Ljava/lang/String;

    .line 62
    return-void
.end method

.method private addEvent(Ljava/lang/String;JI)Z
    .registers 8
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "date"    # J
    .param p4, "msgBox"    # I

    .line 144
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/people/data/MmsQueryHelper;->validateEvent(Ljava/lang/String;JI)Z

    move-result v0

    if-nez v0, :cond_8

    .line 145
    const/4 v0, 0x0

    return v0

    .line 147
    :cond_8
    sget-object v0, Lcom/android/server/people/data/MmsQueryHelper;->MSG_BOX_TO_EVENT_TYPE:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 148
    .local v0, "eventType":I
    iget-object v1, p0, Lcom/android/server/people/data/MmsQueryHelper;->mEventConsumer:Ljava/util/function/BiConsumer;

    new-instance v2, Lcom/android/server/people/data/Event;

    invoke-direct {v2, p2, p3, v0}, Lcom/android/server/people/data/Event;-><init>(JI)V

    invoke-interface {v1, p1, v2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 149
    const/4 v1, 0x1

    return v1
.end method

.method private getMmsAddress(Ljava/lang/String;I)Ljava/lang/String;
    .registers 14
    .param p1, "msgId"    # Ljava/lang/String;
    .param p2, "msgBox"    # I

    .line 115
    invoke-static {p1}, Landroid/provider/Telephony$Mms$Addr;->getAddrUriForMessage(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 116
    .local v6, "addressUri":Landroid/net/Uri;
    const-string v7, "address"

    const-string/jumbo v8, "type"

    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v2

    .line 117
    .local v2, "projection":[Ljava/lang/String;
    const/4 v9, 0x0

    .line 118
    .local v9, "address":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/people/data/MmsQueryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 120
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    if-nez v0, :cond_2d

    .line 121
    :try_start_1f
    const-string v3, "MmsQueryHelper"

    const-string v4, "Cursor is null when querying MMS address table."

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_66

    .line 122
    nop

    .line 136
    if-eqz v0, :cond_2c

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 122
    :cond_2c
    return-object v1

    .line 124
    :cond_2d
    :goto_2d
    :try_start_2d
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_53

    .line 126
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 127
    .local v3, "typeIndex":I
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 129
    .local v4, "type":I
    const/4 v5, 0x1

    if-ne p2, v5, :cond_42

    const/16 v5, 0x89

    if-eq v4, v5, :cond_49

    :cond_42
    const/4 v5, 0x2

    if-ne p2, v5, :cond_52

    const/16 v5, 0x97

    if-ne v4, v5, :cond_52

    .line 132
    :cond_49
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 133
    .local v5, "addrIndex":I
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10
    :try_end_51
    .catchall {:try_start_2d .. :try_end_51} :catchall_66

    move-object v9, v10

    .line 135
    .end local v3    # "typeIndex":I
    .end local v4    # "type":I
    .end local v5    # "addrIndex":I
    :cond_52
    goto :goto_2d

    .line 136
    :cond_53
    if-eqz v0, :cond_58

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 137
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_58
    invoke-static {v9}, Landroid/provider/Telephony$Mms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5f

    .line 138
    return-object v1

    .line 140
    :cond_5f
    iget-object v0, p0, Lcom/android/server/people/data/MmsQueryHelper;->mCurrentCountryIso:Ljava/lang/String;

    invoke-static {v9, v0}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 118
    .restart local v0    # "cursor":Landroid/database/Cursor;
    :catchall_66
    move-exception v1

    if-eqz v0, :cond_71

    :try_start_69
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_6c
    .catchall {:try_start_69 .. :try_end_6c} :catchall_6d

    goto :goto_71

    :catchall_6d
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_71
    :goto_71
    throw v1
.end method

.method private validateEvent(Ljava/lang/String;JI)Z
    .registers 7
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "date"    # J
    .param p4, "msgBox"    # I

    .line 153
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_16

    sget-object v0, Lcom/android/server/people/data/MmsQueryHelper;->MSG_BOX_TO_EVENT_TYPE:Landroid/util/SparseIntArray;

    .line 155
    invoke-virtual {v0, p4}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 153
    :goto_17
    return v0
.end method


# virtual methods
.method getLastMessageTimestamp()J
    .registers 3

    .line 110
    iget-wide v0, p0, Lcom/android/server/people/data/MmsQueryHelper;->mLastMessageTimestamp:J

    return-wide v0
.end method

.method querySince(J)Z
    .registers 22
    .param p1, "sinceTime"    # J

    .line 70
    move-object/from16 v1, p0

    const-string v0, "_id"

    const-string v2, "date"

    const-string/jumbo v3, "msg_box"

    filled-new-array {v0, v2, v3}, [Ljava/lang/String;

    move-result-object v6

    .line 71
    .local v6, "projection":[Ljava/lang/String;
    const-string v10, "date > ?"

    .line 73
    .local v10, "selection":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/String;

    const-wide/16 v11, 0x3e8

    div-long v4, p1, v11

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    const/4 v13, 0x0

    aput-object v4, v8, v13

    .line 74
    .local v8, "selectionArgs":[Ljava/lang/String;
    const/4 v14, 0x0

    .line 75
    .local v14, "hasResults":Z
    invoke-static {}, Landroid/os/Binder;->allowBlockingForCurrentThread()V

    .line 77
    :try_start_21
    iget-object v4, v1, Lcom/android/server/people/data/MmsQueryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    move-object v7, v10

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_2f
    .catchall {:try_start_21 .. :try_end_2f} :catchall_aa

    .line 79
    .local v4, "cursor":Landroid/database/Cursor;
    if-nez v4, :cond_4b

    .line 80
    :try_start_31
    const-string v0, "MmsQueryHelper"

    const-string v2, "Cursor is null when querying MMS table."

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catchall {:try_start_31 .. :try_end_38} :catchall_47

    .line 81
    nop

    .line 102
    if-eqz v4, :cond_43

    :try_start_3b
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_3f

    goto :goto_43

    .line 104
    .end local v4    # "cursor":Landroid/database/Cursor;
    :catchall_3f
    move-exception v0

    move-object v13, v6

    goto/16 :goto_ac

    .restart local v4    # "cursor":Landroid/database/Cursor;
    :cond_43
    :goto_43
    invoke-static {}, Landroid/os/Binder;->defaultBlockingForCurrentThread()V

    .line 81
    return v13

    .line 77
    :catchall_47
    move-exception v0

    move-object v2, v0

    move-object v13, v6

    goto :goto_9c

    .line 83
    :cond_4b
    :goto_4b
    :try_start_4b
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_8e

    .line 85
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 86
    .local v5, "msgIdIndex":I
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 89
    .local v7, "msgId":Ljava/lang/String;
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 90
    .local v9, "dateIndex":I
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15
    :try_end_61
    .catchall {:try_start_4b .. :try_end_61} :catchall_99

    move/from16 v17, v5

    move-object v13, v6

    .end local v5    # "msgIdIndex":I
    .end local v6    # "projection":[Ljava/lang/String;
    .local v13, "projection":[Ljava/lang/String;
    .local v17, "msgIdIndex":I
    mul-long v5, v15, v11

    .line 93
    .local v5, "date":J
    :try_start_66
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 94
    .local v15, "msgBoxIndex":I
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    move/from16 v18, v16

    .line 96
    .local v18, "msgBox":I
    iget-wide v11, v1, Lcom/android/server/people/data/MmsQueryHelper;->mLastMessageTimestamp:J

    invoke-static {v11, v12, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    iput-wide v11, v1, Lcom/android/server/people/data/MmsQueryHelper;->mLastMessageTimestamp:J

    .line 97
    move/from16 v11, v18

    .end local v18    # "msgBox":I
    .local v11, "msgBox":I
    invoke-direct {v1, v7, v11}, Lcom/android/server/people/data/MmsQueryHelper;->getMmsAddress(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    .line 98
    .local v12, "address":Ljava/lang/String;
    if-eqz v12, :cond_87

    invoke-direct {v1, v12, v5, v6, v11}, Lcom/android/server/people/data/MmsQueryHelper;->addEvent(Ljava/lang/String;JI)Z

    move-result v16
    :try_end_84
    .catchall {:try_start_66 .. :try_end_84} :catchall_8b

    if-eqz v16, :cond_87

    .line 99
    const/4 v14, 0x1

    .line 101
    .end local v5    # "date":J
    .end local v7    # "msgId":Ljava/lang/String;
    .end local v9    # "dateIndex":I
    .end local v11    # "msgBox":I
    .end local v12    # "address":Ljava/lang/String;
    .end local v15    # "msgBoxIndex":I
    .end local v17    # "msgIdIndex":I
    :cond_87
    move-object v6, v13

    const-wide/16 v11, 0x3e8

    goto :goto_4b

    .line 77
    :catchall_8b
    move-exception v0

    move-object v2, v0

    goto :goto_9c

    .line 102
    .end local v13    # "projection":[Ljava/lang/String;
    .restart local v6    # "projection":[Ljava/lang/String;
    :cond_8e
    move-object v13, v6

    .end local v6    # "projection":[Ljava/lang/String;
    .restart local v13    # "projection":[Ljava/lang/String;
    if-eqz v4, :cond_94

    :try_start_91
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_94
    .catchall {:try_start_91 .. :try_end_94} :catchall_a8

    .line 104
    .end local v4    # "cursor":Landroid/database/Cursor;
    :cond_94
    invoke-static {}, Landroid/os/Binder;->defaultBlockingForCurrentThread()V

    .line 105
    nop

    .line 106
    return v14

    .line 77
    .end local v13    # "projection":[Ljava/lang/String;
    .restart local v4    # "cursor":Landroid/database/Cursor;
    .restart local v6    # "projection":[Ljava/lang/String;
    :catchall_99
    move-exception v0

    move-object v13, v6

    move-object v2, v0

    .end local v6    # "projection":[Ljava/lang/String;
    .restart local v13    # "projection":[Ljava/lang/String;
    :goto_9c
    if-eqz v4, :cond_a7

    :try_start_9e
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_a1
    .catchall {:try_start_9e .. :try_end_a1} :catchall_a2

    goto :goto_a7

    :catchall_a2
    move-exception v0

    move-object v3, v0

    :try_start_a4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v8    # "selectionArgs":[Ljava/lang/String;
    .end local v10    # "selection":Ljava/lang/String;
    .end local v13    # "projection":[Ljava/lang/String;
    .end local v14    # "hasResults":Z
    .end local p0    # "this":Lcom/android/server/people/data/MmsQueryHelper;
    .end local p1    # "sinceTime":J
    :cond_a7
    :goto_a7
    throw v2
    :try_end_a8
    .catchall {:try_start_a4 .. :try_end_a8} :catchall_a8

    .line 104
    .end local v4    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "selectionArgs":[Ljava/lang/String;
    .restart local v10    # "selection":Ljava/lang/String;
    .restart local v13    # "projection":[Ljava/lang/String;
    .restart local v14    # "hasResults":Z
    .restart local p0    # "this":Lcom/android/server/people/data/MmsQueryHelper;
    .restart local p1    # "sinceTime":J
    :catchall_a8
    move-exception v0

    goto :goto_ac

    .end local v13    # "projection":[Ljava/lang/String;
    .restart local v6    # "projection":[Ljava/lang/String;
    :catchall_aa
    move-exception v0

    move-object v13, v6

    .end local v6    # "projection":[Ljava/lang/String;
    .restart local v13    # "projection":[Ljava/lang/String;
    :goto_ac
    invoke-static {}, Landroid/os/Binder;->defaultBlockingForCurrentThread()V

    .line 105
    throw v0
.end method
