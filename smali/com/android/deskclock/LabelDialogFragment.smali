.class public Lcom/android/deskclock/LabelDialogFragment;
.super Landroid/app/DialogFragment;
.source "LabelDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/LabelDialogFragment$TimerLabelDialogHandler;,
        Lcom/android/deskclock/LabelDialogFragment$AlarmLabelDialogHandler;
    }
.end annotation


# instance fields
.field private mLabelBox:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 142
    return-void
.end method

.method static synthetic access$000(Lcom/android/deskclock/LabelDialogFragment;Lcom/android/deskclock/Alarm;Lcom/android/deskclock/timer/TimerObj;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/android/deskclock/LabelDialogFragment;->set(Lcom/android/deskclock/Alarm;Lcom/android/deskclock/timer/TimerObj;Ljava/lang/String;)V

    return-void
.end method

.method public static newInstance(Lcom/android/deskclock/Alarm;Ljava/lang/String;)Lcom/android/deskclock/LabelDialogFragment;
    .locals 3
    .parameter "alarm"
    .parameter "label"

    .prologue
    .line 50
    new-instance v1, Lcom/android/deskclock/LabelDialogFragment;

    invoke-direct {v1}, Lcom/android/deskclock/LabelDialogFragment;-><init>()V

    .line 51
    .local v1, frag:Lcom/android/deskclock/LabelDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 52
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "label"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v2, "alarm"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 54
    invoke-virtual {v1, v0}, Lcom/android/deskclock/LabelDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 55
    return-object v1
.end method

.method public static newInstance(Lcom/android/deskclock/timer/TimerObj;Ljava/lang/String;Ljava/lang/String;)Lcom/android/deskclock/LabelDialogFragment;
    .locals 3
    .parameter "timer"
    .parameter "label"
    .parameter "tag"

    .prologue
    .line 59
    new-instance v1, Lcom/android/deskclock/LabelDialogFragment;

    invoke-direct {v1}, Lcom/android/deskclock/LabelDialogFragment;-><init>()V

    .line 60
    .local v1, frag:Lcom/android/deskclock/LabelDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 61
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "label"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v2, "timer"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 63
    const-string v2, "tag"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {v1, v0}, Lcom/android/deskclock/LabelDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 65
    return-object v1
.end method

.method private set(Lcom/android/deskclock/Alarm;Lcom/android/deskclock/timer/TimerObj;Ljava/lang/String;)V
    .locals 3
    .parameter "alarm"
    .parameter "timer"
    .parameter "tag"

    .prologue
    .line 121
    iget-object v2, p0, Lcom/android/deskclock/LabelDialogFragment;->mLabelBox:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, label:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 124
    const-string v1, ""

    .line 126
    :cond_0
    invoke-virtual {p0}, Lcom/android/deskclock/LabelDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 127
    .local v0, activity:Landroid/app/Activity;
    instance-of v2, v0, Lcom/android/deskclock/LabelDialogFragment$AlarmLabelDialogHandler;

    if-eqz v2, :cond_1

    .line 128
    invoke-virtual {p0}, Lcom/android/deskclock/LabelDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/deskclock/AlarmClock;

    invoke-virtual {v2, p1, v1}, Lcom/android/deskclock/AlarmClock;->onDialogLabelSet(Lcom/android/deskclock/Alarm;Ljava/lang/String;)V

    .line 135
    :goto_0
    invoke-virtual {p0}, Lcom/android/deskclock/LabelDialogFragment;->dismiss()V

    .line 136
    return-void

    .line 129
    :cond_1
    instance-of v2, v0, Lcom/android/deskclock/LabelDialogFragment$TimerLabelDialogHandler;

    if-eqz v2, :cond_2

    .line 130
    invoke-virtual {p0}, Lcom/android/deskclock/LabelDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/deskclock/DeskClock;

    invoke-virtual {v2, p2, v1, p3}, Lcom/android/deskclock/DeskClock;->onDialogLabelSet(Lcom/android/deskclock/timer/TimerObj;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 132
    :cond_2
    const-string v2, "Error! Activities that use LabelDialogFragment must implement AlarmLabelDialogHandler or TimerLabelDialogHandler"

    invoke-static {v2}, Lcom/android/deskclock/Log;->e(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 71
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/deskclock/LabelDialogFragment;->setStyle(II)V

    .line 72
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/android/deskclock/LabelDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 78
    .local v1, bundle:Landroid/os/Bundle;
    const-string v8, "label"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 79
    .local v3, label:Ljava/lang/String;
    const-string v8, "alarm"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/Alarm;

    .line 80
    .local v0, alarm:Lcom/android/deskclock/Alarm;
    const-string v8, "timer"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/android/deskclock/timer/TimerObj;

    .line 81
    .local v6, timer:Lcom/android/deskclock/timer/TimerObj;
    const-string v8, "tag"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 83
    .local v5, tag:Ljava/lang/String;
    const v8, 0x7f040017

    const/4 v9, 0x0

    invoke-virtual {p1, v8, p2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 85
    .local v7, view:Landroid/view/View;
    const v8, 0x7f0e0044

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/android/deskclock/LabelDialogFragment;->mLabelBox:Landroid/widget/EditText;

    .line 86
    iget-object v8, p0, Lcom/android/deskclock/LabelDialogFragment;->mLabelBox:Landroid/widget/EditText;

    invoke-virtual {v8, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v8, p0, Lcom/android/deskclock/LabelDialogFragment;->mLabelBox:Landroid/widget/EditText;

    new-instance v9, Lcom/android/deskclock/LabelDialogFragment$1;

    invoke-direct {v9, p0, v0, v6, v5}, Lcom/android/deskclock/LabelDialogFragment$1;-><init>(Lcom/android/deskclock/LabelDialogFragment;Lcom/android/deskclock/Alarm;Lcom/android/deskclock/timer/TimerObj;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 98
    const v8, 0x7f0e0045

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 99
    .local v2, cancelButton:Landroid/widget/Button;
    new-instance v8, Lcom/android/deskclock/LabelDialogFragment$2;

    invoke-direct {v8, p0}, Lcom/android/deskclock/LabelDialogFragment$2;-><init>(Lcom/android/deskclock/LabelDialogFragment;)V

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    const v8, 0x7f0e0046

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 107
    .local v4, setButton:Landroid/widget/Button;
    new-instance v8, Lcom/android/deskclock/LabelDialogFragment$3;

    invoke-direct {v8, p0, v0, v6, v5}, Lcom/android/deskclock/LabelDialogFragment$3;-><init>(Lcom/android/deskclock/LabelDialogFragment;Lcom/android/deskclock/Alarm;Lcom/android/deskclock/timer/TimerObj;Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    invoke-virtual {p0}, Lcom/android/deskclock/LabelDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 117
    return-object v7
.end method
