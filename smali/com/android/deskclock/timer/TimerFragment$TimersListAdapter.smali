.class Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;
.super Landroid/widget/BaseAdapter;
.source "TimerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/timer/TimerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TimersListAdapter"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mTimers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/deskclock/timer/TimerObj;",
            ">;"
        }
    .end annotation
.end field

.field private final mTimersCompare:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/deskclock/timer/TimerObj;",
            ">;"
        }
    .end annotation
.end field

.field mmPrefs:Landroid/content/SharedPreferences;

.field final synthetic this$0:Lcom/android/deskclock/timer/TimerFragment;


# direct methods
.method public constructor <init>(Lcom/android/deskclock/timer/TimerFragment;Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "prefs"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->mTimers:Ljava/util/ArrayList;

    .line 280
    new-instance v0, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter$3;

    invoke-direct {v0, p0}, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter$3;-><init>(Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;)V

    iput-object v0, p0, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->mTimersCompare:Ljava/util/Comparator;

    .line 121
    iput-object p2, p0, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->mContext:Landroid/content/Context;

    .line 122
    iput-object p3, p0, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->mmPrefs:Landroid/content/SharedPreferences;

    .line 123
    return-void
.end method


# virtual methods
.method public addTimer(Lcom/android/deskclock/timer/TimerObj;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->mTimers:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 257
    invoke-virtual {p0}, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->sort()V

    .line 258
    return-void
.end method

.method public deleteTimer(I)V
    .locals 3
    .parameter "id"

    .prologue
    .line 144
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->mTimers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 145
    iget-object v2, p0, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->mTimers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/deskclock/timer/TimerObj;

    .line 147
    .local v1, t:Lcom/android/deskclock/timer/TimerObj;
    iget v2, v1, Lcom/android/deskclock/timer/TimerObj;->mTimerId:I

    if-ne v2, p1, :cond_2

    .line 148
    iget-object v2, v1, Lcom/android/deskclock/timer/TimerObj;->mView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 149
    iget-object v2, v1, Lcom/android/deskclock/timer/TimerObj;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/deskclock/timer/TimerListItem;

    invoke-virtual {v2}, Lcom/android/deskclock/timer/TimerListItem;->stop()V

    .line 151
    :cond_0
    iget-object v2, p0, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->mmPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {v1, v2}, Lcom/android/deskclock/timer/TimerObj;->deleteFromSharedPref(Landroid/content/SharedPreferences;)V

    .line 152
    iget-object v2, p0, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->mTimers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 153
    invoke-virtual {p0}, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->notifyDataSetChanged()V

    .line 157
    .end local v1           #t:Lcom/android/deskclock/timer/TimerObj;
    :cond_1
    return-void

    .line 144
    .restart local v1       #t:Lcom/android/deskclock/timer/TimerObj;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected findTimerPositionById(I)I
    .locals 3
    .parameter "id"

    .prologue
    .line 160
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->mTimers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 161
    iget-object v2, p0, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->mTimers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/deskclock/timer/TimerObj;

    .line 162
    .local v1, t:Lcom/android/deskclock/timer/TimerObj;
    iget v2, v1, Lcom/android/deskclock/timer/TimerObj;->mTimerId:I

    if-ne v2, p1, :cond_0

    .line 166
    .end local v0           #i:I
    .end local v1           #t:Lcom/android/deskclock/timer/TimerObj;
    :goto_1
    return v0

    .line 160
    .restart local v0       #i:I
    .restart local v1       #t:Lcom/android/deskclock/timer/TimerObj;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    .end local v1           #t:Lcom/android/deskclock/timer/TimerObj;
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->mTimers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "p"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->mTimers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "p"

    .prologue
    .line 137
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->mTimers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->mTimers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/timer/TimerObj;

    iget v0, v0, Lcom/android/deskclock/timer/TimerObj;->mTimerId:I

    int-to-long v0, v0

    .line 140
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 26
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 179
    new-instance v3, Lcom/android/deskclock/timer/TimerListItem;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/deskclock/timer/TimerListItem;-><init>(Landroid/content/Context;)V

    .line 181
    .local v3, v:Lcom/android/deskclock/timer/TimerListItem;
    invoke-virtual/range {p0 .. p1}, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/deskclock/timer/TimerObj;

    .line 182
    .local v23, o:Lcom/android/deskclock/timer/TimerObj;
    move-object/from16 v0, v23

    iput-object v3, v0, Lcom/android/deskclock/timer/TimerObj;->mView:Landroid/view/View;

    .line 183
    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/android/deskclock/timer/TimerObj;->updateTimeLeft(Z)J

    move-result-wide v6

    .line 184
    .local v6, timeLeft:J
    move-object/from16 v0, v23

    iget v4, v0, Lcom/android/deskclock/timer/TimerObj;->mState:I

    const/4 v5, 0x5

    if-eq v4, v5, :cond_0

    const/4 v8, 0x1

    .line 185
    .local v8, drawRed:Z
    :goto_0
    move-object/from16 v0, v23

    iget-wide v4, v0, Lcom/android/deskclock/timer/TimerObj;->mOriginalLength:J

    invoke-virtual/range {v3 .. v8}, Lcom/android/deskclock/timer/TimerListItem;->set(JJZ)V

    .line 186
    const/4 v4, 0x1

    invoke-virtual {v3, v6, v7, v4}, Lcom/android/deskclock/timer/TimerListItem;->setTime(JZ)V

    .line 187
    move-object/from16 v0, v23

    iget v4, v0, Lcom/android/deskclock/timer/TimerObj;->mState:I

    packed-switch v4, :pswitch_data_0

    .line 202
    :goto_1
    :pswitch_0
    const v4, 0x7f0e006a

    invoke-virtual {v3, v4}, Lcom/android/deskclock/timer/TimerListItem;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/android/deskclock/timer/CountingTimerView;

    .line 204
    .local v18, countingTimerView:Lcom/android/deskclock/timer/CountingTimerView;
    new-instance v4, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v4, v0, v1}, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter$1;-><init>(Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;Lcom/android/deskclock/timer/TimerObj;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/android/deskclock/timer/CountingTimerView;->registerVirtualButtonAction(Ljava/lang/Runnable;)V

    .line 212
    const v4, 0x7f0e008c

    invoke-virtual {v3, v4}, Lcom/android/deskclock/timer/TimerListItem;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageButton;

    .line 213
    .local v19, delete:Landroid/widget/ImageButton;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    new-instance v4, Lcom/android/deskclock/timer/TimerFragment$ClickAction;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    const/4 v10, 0x3

    move-object/from16 v0, v23

    invoke-direct {v4, v5, v10, v0}, Lcom/android/deskclock/timer/TimerFragment$ClickAction;-><init>(Lcom/android/deskclock/timer/TimerFragment;ILcom/android/deskclock/timer/TimerObj;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 215
    const v4, 0x7f0e008a

    invoke-virtual {v3, v4}, Lcom/android/deskclock/timer/TimerListItem;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/ImageButton;

    .line 216
    .local v24, plusOne:Landroid/widget/ImageButton;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    new-instance v4, Lcom/android/deskclock/timer/TimerFragment$ClickAction;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    const/4 v10, 0x2

    move-object/from16 v0, v23

    invoke-direct {v4, v5, v10, v0}, Lcom/android/deskclock/timer/TimerFragment$ClickAction;-><init>(Lcom/android/deskclock/timer/TimerFragment;ILcom/android/deskclock/timer/TimerObj;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 218
    const v4, 0x7f0e008b

    invoke-virtual {v3, v4}, Lcom/android/deskclock/timer/TimerListItem;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    .line 219
    .local v25, stop:Landroid/widget/TextView;
    new-instance v4, Lcom/android/deskclock/timer/TimerFragment$ClickAction;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    const/4 v10, 0x1

    move-object/from16 v0, v23

    invoke-direct {v4, v5, v10, v0}, Lcom/android/deskclock/timer/TimerFragment$ClickAction;-><init>(Lcom/android/deskclock/timer/TimerFragment;ILcom/android/deskclock/timer/TimerObj;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 220
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    move-object/from16 v0, v23

    #calls: Lcom/android/deskclock/timer/TimerFragment;->setTimerButtons(Lcom/android/deskclock/timer/TimerObj;)V
    invoke-static {v4, v0}, Lcom/android/deskclock/timer/TimerFragment;->access$100(Lcom/android/deskclock/timer/TimerFragment;Lcom/android/deskclock/timer/TimerObj;)V

    .line 222
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    invoke-virtual {v4}, Lcom/android/deskclock/timer/TimerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0008

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/deskclock/timer/TimerListItem;->setBackgroundColor(I)V

    .line 223
    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/deskclock/timer/CountingTimerView;->registerStopTextView(Landroid/widget/TextView;)V

    .line 224
    const v4, 0x7f0e0084

    invoke-virtual {v3, v4}, Lcom/android/deskclock/timer/TimerListItem;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/deskclock/CircleButtonsLinearLayout;

    .line 226
    .local v9, circleLayout:Lcom/android/deskclock/CircleButtonsLinearLayout;
    const v10, 0x7f0e0086

    const v11, 0x7f0e008a

    const v12, 0x7f0e008c

    const v13, 0x7f0e008b

    const v14, 0x7f090046

    const v15, 0x7f090047

    const v16, 0x7f0e0087

    const v17, 0x7f0e0088

    invoke-virtual/range {v9 .. v17}, Lcom/android/deskclock/CircleButtonsLinearLayout;->setCircleTimerViewIds(IIIIIIII)V

    .line 231
    const v4, 0x7f0e0087

    invoke-virtual {v3, v4}, Lcom/android/deskclock/timer/TimerListItem;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/FrameLayout;

    .line 232
    .local v20, label:Landroid/widget/FrameLayout;
    const v4, 0x7f0e0089

    invoke-virtual {v3, v4}, Lcom/android/deskclock/timer/TimerListItem;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/ImageButton;

    .line 233
    .local v21, labelIcon:Landroid/widget/ImageButton;
    const v4, 0x7f0e0088

    invoke-virtual {v3, v4}, Lcom/android/deskclock/timer/TimerListItem;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 234
    .local v22, labelText:Landroid/widget/TextView;
    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/android/deskclock/timer/TimerObj;->mLabel:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 235
    const/16 v4, 0x8

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 236
    const/4 v4, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 242
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    invoke-virtual {v4}, Lcom/android/deskclock/timer/TimerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    instance-of v4, v4, Lcom/android/deskclock/DeskClock;

    if-eqz v4, :cond_2

    .line 243
    new-instance v4, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter$2;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    invoke-virtual {v5}, Lcom/android/deskclock/timer/TimerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v4, v0, v5, v1, v2}, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter$2;-><init>(Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;Landroid/app/Activity;Landroid/widget/TextView;Lcom/android/deskclock/timer/TimerObj;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 252
    :goto_3
    return-object v3

    .line 184
    .end local v8           #drawRed:Z
    .end local v9           #circleLayout:Lcom/android/deskclock/CircleButtonsLinearLayout;
    .end local v18           #countingTimerView:Lcom/android/deskclock/timer/CountingTimerView;
    .end local v19           #delete:Landroid/widget/ImageButton;
    .end local v20           #label:Landroid/widget/FrameLayout;
    .end local v21           #labelIcon:Landroid/widget/ImageButton;
    .end local v22           #labelText:Landroid/widget/TextView;
    .end local v24           #plusOne:Landroid/widget/ImageButton;
    .end local v25           #stop:Landroid/widget/TextView;
    :cond_0
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 189
    .restart local v8       #drawRed:Z
    :pswitch_1
    invoke-virtual {v3}, Lcom/android/deskclock/timer/TimerListItem;->start()V

    goto/16 :goto_1

    .line 192
    :pswitch_2
    invoke-virtual {v3}, Lcom/android/deskclock/timer/TimerListItem;->timesUp()V

    goto/16 :goto_1

    .line 195
    :pswitch_3
    invoke-virtual {v3}, Lcom/android/deskclock/timer/TimerListItem;->done()V

    goto/16 :goto_1

    .line 238
    .restart local v9       #circleLayout:Lcom/android/deskclock/CircleButtonsLinearLayout;
    .restart local v18       #countingTimerView:Lcom/android/deskclock/timer/CountingTimerView;
    .restart local v19       #delete:Landroid/widget/ImageButton;
    .restart local v20       #label:Landroid/widget/FrameLayout;
    .restart local v21       #labelIcon:Landroid/widget/ImageButton;
    .restart local v22       #labelText:Landroid/widget/TextView;
    .restart local v24       #plusOne:Landroid/widget/ImageButton;
    .restart local v25       #stop:Landroid/widget/TextView;
    :cond_1
    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/android/deskclock/timer/TimerObj;->mLabel:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    const/4 v4, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 240
    const/16 v4, 0x8

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_2

    .line 250
    :cond_2
    const/4 v4, 0x4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_3

    .line 187
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->mmPrefs:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->mTimers:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/android/deskclock/timer/TimerObj;->getTimersFromSharedPrefs(Landroid/content/SharedPreferences;Ljava/util/ArrayList;)V

    .line 266
    invoke-virtual {p0}, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->sort()V

    .line 267
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->mmPrefs:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->mTimers:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/android/deskclock/timer/TimerObj;->putTimersInSharedPrefs(Landroid/content/SharedPreferences;Ljava/util/ArrayList;)V

    .line 262
    return-void
.end method

.method public removeTimer(Lcom/android/deskclock/timer/TimerObj;)V
    .locals 2
    .parameter "timerObj"

    .prologue
    .line 170
    iget v1, p1, Lcom/android/deskclock/timer/TimerObj;->mTimerId:I

    invoke-virtual {p0, v1}, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->findTimerPositionById(I)I

    move-result v0

    .line 171
    .local v0, position:I
    if-ltz v0, :cond_0

    .line 172
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->mTimers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 173
    invoke-virtual {p0}, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->notifyDataSetChanged()V

    .line 175
    :cond_0
    return-void
.end method

.method public saveGlobalState()V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->mmPrefs:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->mTimers:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/android/deskclock/timer/TimerObj;->putTimersInSharedPrefs(Landroid/content/SharedPreferences;Ljava/util/ArrayList;)V

    .line 271
    return-void
.end method

.method public sort()V
    .locals 2

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->mTimers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->mTimersCompare:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 276
    invoke-virtual {p0}, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->notifyDataSetChanged()V

    .line 278
    :cond_0
    return-void
.end method
